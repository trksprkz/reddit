class User < ApplicationRecord
  validates :username, presence: true, length: [minimum: 4, maximum: 14], uniqueness: true

  validates :email, presence: true, uniqueness: true, with: EMAIL_REGEX
    EMAIL_REGEX =^[\\w!#$%&'*+/=?`{|}~^-]+(?:\\.[\\w!#$%&'*+/=?`{|}~^-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}$
    def valid_email? email
      email= EMAIL_REGEX
    end

  validates :password, presence: true, length: [minimuum: 6, maximum: 8] uniqueness: true
end
