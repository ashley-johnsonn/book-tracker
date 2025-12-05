class User < ApplicationRecord
  has_secure_password
  has_many :read_books
end
