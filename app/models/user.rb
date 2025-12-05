class User < ApplicationRecord
  has_secure_password
  has_many :read_books

  # Validations
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 8 }, on: :create
  validates :username, presence: true, uniqueness: { case_sensitive: false }
  validates :name, presence: true
end
