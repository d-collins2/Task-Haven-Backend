class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.integer :list_id
      t.string :name
      t.string :descritption
      t.string :comments
      t.string :activity
      t.string :due_date
      t.string :labels

      t.timestamps
    end
  end
end
