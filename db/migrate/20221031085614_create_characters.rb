class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :title
      t.text :description
      t.string :insta_link
      t.string :email
      t.string :main_photo

      t.timestamps
    end
  end
end
