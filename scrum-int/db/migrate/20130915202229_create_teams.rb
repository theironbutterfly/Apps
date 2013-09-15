class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :team_name
      t.int :member_id

      t.timestamps
    end
  end
end
