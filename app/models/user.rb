class User < ApplicationRecord
  validate :username

  validate :email
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }

  validate :password

  validate :id
  @id = :id
  has_many :posts
end
