class Post < ApplicationRecord
  validates :title, presence: true, length: [minimum: 4, maximum: 50], uniqueness: true
  validates :body, length: [minimum: 0, maximum: 200], allow_blank: true

  validates :url, presence: true
    validates :url, format: { with: URI.regexp }, if: 'url.present?'
end
