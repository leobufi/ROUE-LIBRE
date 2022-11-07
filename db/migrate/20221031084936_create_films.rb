class CreateFilms < ActiveRecord::Migration[6.1]
  def change
    create_table :films do |t|
      t.boolean :finished
      t.boolean :in_production
      t.string :title
      t.text :description
      t.string :duration
      t.text :author_word
      t.text :prod_word
      t.text :tech_team
      t.text :diff
      t.text :festivals
      t.string :financors
      t.string :main_photo
      t.string :photos
      t.string :affiche
      t.string :trailer

      t.timestamps
    end
  end
end
