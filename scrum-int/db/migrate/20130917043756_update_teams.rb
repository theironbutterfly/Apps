class UpdateTeams < ActiveRecord::Migration
  remove_column :teams, :table_name, :member_id, :string
  add_column :teams, :name, :string
end
