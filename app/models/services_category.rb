class ServicesCategory < ApplicationRecord
  has_many :services

  validates :title, presence: true
  validates :description, presence: true
end
