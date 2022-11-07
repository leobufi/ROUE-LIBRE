class CreateGenerals < ActiveRecord::Migration[6.1]
  def change
    create_table :generals do |t|
      t.string :video_link

      t.timestamps
    end
  end
end
