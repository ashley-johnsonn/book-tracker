require "net/http"
require "json"

class RecommendationsController < ApplicationController
  before_action :require_login
  def index
    favourite_books = current_user.read_books.where(status: "finished").where("rating >= ?", 4)

    books_summary = favourite_books.map { |b| "#{b.title} by #{b.author} (rated #{b.rating}/5)" }.join(", ")

    prompt = "Based on these books I loved: #{books_summary}. Please recommend 5 new books I might enjoy. For each book, provide the title, author, and a brief reason why I'd like it based on my reading history."

    # Call Anthropic API
    uri = URI("https://api.anthropic.com/v1/messages")
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Post.new(uri)
    request["Content-Type"] = "application/json"
    request["x-api-key"] = Rails.application.credentials.anthropic[:api_key]
    request["anthropic-version"] = "2023-06-01"

    request.body = {
      model: "claude-sonnet-4-20250514",
      max_tokens: 1024,
      messages: [
        { role: "user", content: prompt }
      ]
    }.to_json

    response = http.request(request)
    data = JSON.parse(response.body)

    if response.code == "200"
      @recommendations = data.dig("content", 0, "text")
    else
      @error = "API Error (#{response.code}): #{data}"
      @recommendations = nil
    end
  end
end
