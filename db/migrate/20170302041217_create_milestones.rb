class CreateMilestones < ActiveRecord::Migration[5.0]
  def change
    create_table :milestones do |t|
      t.string :title
      t.date :date
      t.text :description
      t.integer :kid_id

      t.timestamps
    end
  end
end
