class AddDetailsToWeek < ActiveRecord::Migration
  def change
    add_column :weeks, :number, :integer
    add_column :weeks, :game_id,:integer
    add_column :weeks, :api_id, :string
    add_column :weeks, :api_game_id, :string
  end
end
