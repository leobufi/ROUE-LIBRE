class CreateAbouts < ActiveRecord::Migration[6.1]
  def change
    create_table :abouts do |t|
      t.string :main_photo
      t.text :description

      t.timestamps
    end
  end
end
