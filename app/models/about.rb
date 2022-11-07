class About < ApplicationRecord
  has_many :characters

  # validates :main_photo, presence: true
  validates :description, presence: true
end
