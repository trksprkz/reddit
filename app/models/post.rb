class Post < ApplicationRecord
  validate :title
  validate :body
  validate :link
end
