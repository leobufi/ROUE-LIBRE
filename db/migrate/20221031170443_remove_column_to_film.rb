class RemoveColumnToFilm < ActiveRecord::Migration[6.1]
  def change
    remove_column :films, :finished
    remove_column :films, :in_production
    add_column :films, :finished, :boolean, default: false
    add_column :films, :in_production, :boolean, default: false
  end
end
