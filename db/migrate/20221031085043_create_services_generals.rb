class CreateServicesGenerals < ActiveRecord::Migration[6.1]
  def change
    create_table :services_generals do |t|
      t.text :description

      t.timestamps
    end
  end
end
