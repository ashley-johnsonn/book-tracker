class ReadBook < ApplicationRecord
    validates :title, presence: true
    validates :author, presence: true
    validates :rating, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }, allow_nil: true

    belongs_to :user
end
