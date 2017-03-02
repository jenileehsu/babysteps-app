class CreateKids < ActiveRecord::Migration[5.0]
  def change
    create_table :kids do |t|
      t.string :name
      t.date :birthdate
      t.integer :user_id

      t.timestamps
    end
  end
end
