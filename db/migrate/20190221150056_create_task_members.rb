class CreateTaskMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :task_members do |t|
      t.integer :task_id
      t.integer :user_id

      t.timestamps
    end
  end
end
