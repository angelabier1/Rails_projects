class FixHomeTeam < ActiveRecord::Migration
  def change
    rename_column :games, :home_team, :home_team_id
  end
end
