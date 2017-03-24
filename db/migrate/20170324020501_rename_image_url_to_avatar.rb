class RenameImageUrlToAvatar < ActiveRecord::Migration[5.0]
  def change
    rename_column :images, :image_url, :avatar
  end
end
