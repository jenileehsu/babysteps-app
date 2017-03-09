class RenameNameColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :kids, :name, :first_name
  end
end
