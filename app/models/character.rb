class Character < ApplicationRecord

  belongs_to :about

  validates :title, presence: true
  validates :description, presence: true
  # validates :insta_link, presence: true
  validates :email, presence: true
  # validates :photo, presence: true

end
