class AddReferenceToFilm < ActiveRecord::Migration[6.1]
  def change
    add_reference :films, :film_category
  end
end
