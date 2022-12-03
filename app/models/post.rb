class Post < ApplicationRecord
  validate :title
  validate :body
  validate :url
    validates :url, format: { with: URI.regexp }, if: 'url.present?'
end
