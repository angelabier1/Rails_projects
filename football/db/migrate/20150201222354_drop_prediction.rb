class DropPrediction < ActiveRecord::Migration
  def change
    drop_table :predictions
  end
end
