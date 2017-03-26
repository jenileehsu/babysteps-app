class CreateNames < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :name
      t.text :text
      t.integer :milestone_id

      t.timestamps
    end
  end
end
