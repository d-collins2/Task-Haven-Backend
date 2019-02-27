class CreateBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :boards do |t|
      t.integer :user_id
      t.integer :team_id
      t.string :name

      t.timestamps
    end
  end
end
