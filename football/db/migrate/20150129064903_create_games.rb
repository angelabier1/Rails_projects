class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.datetime :quoted_date
      t.integer :home_team
      t.integer :away_team
      t.integer :home_score
      t.integer :away_score
      t.timestamps null: false
    end
  end
end
