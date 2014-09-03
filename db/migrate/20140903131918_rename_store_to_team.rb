class RenameStoreToTeam < ActiveRecord::Migration
  def up
    rename_table :oversight_stores, :oversight_teams
    rename_column :oversight_employments, :store_id, :team_id
  end

  def down
    rename_table :oversight_teams, :oversight_stores
    rename_column :oversight_employments, :team_id, :store_id
  end
end
