class Film < ApplicationRecord
  belongs_to :film_category
  has_one_attached :main_photo
  has_many_attached :photos



  # validates :finished, presence: true
  # validates :in_production, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :duration, presence: true
  validates :author_word, presence: true
  # validates :prod_word, presence: true
  # validates :tech_team, presence: true
  # validates :diff, presence: true
  # validates :festivals, presence: true
  # validates :financors, presence: true
  # validates :main_photo, presence: true
  # validates :photos, presence: true
  # validates :affiche, presence: true
  # validates :trailer, presence: true

end
