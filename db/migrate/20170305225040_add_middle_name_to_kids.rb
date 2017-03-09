class AddMiddleNameToKids < ActiveRecord::Migration[5.0]
  def change
    add_column :kids, :middle_name, :string
  end
end
