class FilmCategory < ApplicationRecord
  has_many :films

  validates :title, presence: true

end
