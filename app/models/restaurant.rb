class Restaurant < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :name, presence: true, uniqueness: true, allow_nil: false
  validates :address, presence: true, allow_nil: false
  validates :description, presence: true
  validates :image, presence: true
end
