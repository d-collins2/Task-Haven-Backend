class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :task_name
      t.integer :user_id
      t.integer :task_id

      t.timestamps
    end
  end
end
