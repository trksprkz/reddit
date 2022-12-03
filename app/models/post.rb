class Post < ApplicationRecord
  validate :title
  validate :body
  validate :link
  belongs_to :id
end
