class AddAttachmentAvatarToKids < ActiveRecord::Migration
  def up
    add_attachment :kids, :avatar
  end

  def down
    remove_attachment :kids, :avatar
  end
end
