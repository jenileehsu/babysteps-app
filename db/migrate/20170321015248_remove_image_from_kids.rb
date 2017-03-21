class RemoveImageFromKids < ActiveRecord::Migration[5.0]
  def change
    remove_column :kids, :image, :string
  end
end
