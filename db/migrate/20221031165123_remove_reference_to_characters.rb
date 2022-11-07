class RemoveReferenceToCharacters < ActiveRecord::Migration[6.1]
  def change
    remove_column :characters, :abouts_id
    add_reference :characters, :about
  end
end
