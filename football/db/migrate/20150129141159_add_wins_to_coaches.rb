class AddWinsToCoaches < ActiveRecord::Migration
  def change
    change_table :coaches do |t|
      t.integer :wins
    end
  end
end

