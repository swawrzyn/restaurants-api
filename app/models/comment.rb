class Comment < ApplicationRecord
  belongs_to :restaurant
  validates :name, presence: true, allow_nil: false
  validates :content, presence: true, allow_nil: false
end
