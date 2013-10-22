class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.string :name
      t.string :start_time
      t.string :end_time
      t.references :team

      t.timestamps
    end
    add_index :meetings, :team_id
  end
end
