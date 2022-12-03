class Comment < ApplicationRecord
  validate :comment
  validate :timestamps
end
