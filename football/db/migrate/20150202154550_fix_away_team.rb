class FixAwayTeam < ActiveRecord::Migration
  def change
    rename_column :games, :away_team, :away_team_id
  end
end
