class Service < ApplicationRecord
  belongs_to :services_category

  validates :title, presence: true
  validates :client_name, presence: true
  validates :year, presence: true
  # validates :main_photo, presence: true
  validates :link, presence: true
end
