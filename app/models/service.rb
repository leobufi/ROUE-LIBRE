class Service < ApplicationRecord
  belongs_to :services_category
  has_one_attached :main_photo


  validates :title, presence: true
  validates :client_name, presence: true
  validates :year, presence: true
  # validates :main_photo, presence: true
  validates :link, presence: true
end
