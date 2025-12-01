require 'net/http'
require 'uri'
require 'json'
class BookSearchController < ApplicationController
  def search
    if params[:query].present?
      query = params[:query]
      url = URI("https://www.googleapis.com/books/v1/volumes?q=#{URI.encode_www_form_component(query)}")
   
      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE  # Skip SSL verification for testing

      request = Net::HTTP::Get.new(url)
      response = http.request(request)
      data = JSON.parse(response.body)

      @books = data["items"] || []

    else
      @books = []
    end

  end
end
