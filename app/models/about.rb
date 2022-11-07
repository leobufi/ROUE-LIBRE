class About < ApplicationRecord
  has_many :characters
  has_one_attached :main_photo

  # validates :main_photo, presence: true
  validates :description, presence: true
end
