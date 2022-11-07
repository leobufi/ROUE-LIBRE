class Character < ApplicationRecord

  belongs_to :about
  has_one_attached :main_photo


  validates :title, presence: true
  validates :description, presence: true
  # validates :insta_link, presence: true
  validates :email, presence: true
  # validates :photo, presence: true

end
