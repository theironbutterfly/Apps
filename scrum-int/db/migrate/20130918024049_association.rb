class Association < ActiveRecord::Migration
    change_table :members do |t|
      t.references :team
     end
    add_index :members, :team_id
end