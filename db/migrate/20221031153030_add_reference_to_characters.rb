class AddReferenceToCharacters < ActiveRecord::Migration[6.1]
  def change
    add_reference :characters, :abouts
  end
end
