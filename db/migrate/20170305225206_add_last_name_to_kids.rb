class AddLastNameToKids < ActiveRecord::Migration[5.0]
  def change
    add_column :kids, :last_name, :string
  end
end
