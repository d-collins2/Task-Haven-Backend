class CreateTeamMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :team_members do |t|
      t.integer :user_id
      t.boolean :admin, default: false
      t.integer :team_id

      t.timestamps
    end
  end
end
