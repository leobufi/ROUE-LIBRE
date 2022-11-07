class AddReferenceToServices < ActiveRecord::Migration[6.1]
  def change
    add_reference :services, :services_category
  end
end
