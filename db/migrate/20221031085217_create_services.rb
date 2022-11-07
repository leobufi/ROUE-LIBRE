class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.string :title
      t.string :client_name
      t.string :year
      t.string :main_photo
      t.string :link

      t.timestamps
    end
  end
end
