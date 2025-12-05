class ReadBook < ApplicationRecord
    validates :title, presence: true
    validates :author, presence: true
    validates :rating, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }, allow_nil: true
    validates :status, inclusion: { in: %w[want_to_read reading finished], message: "%{value} is not a valid status" }

    belongs_to :user

    after_initialize :set_default_status, if: :new_record?

    private

    def set_default_status
      self.status ||= "finished"
    end
end
