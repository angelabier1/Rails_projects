class AddLossesToCoaches < ActiveRecord::Migration
  def change
    change_table :coaches do |t|
      t.integer :losses
    end
  end
end
