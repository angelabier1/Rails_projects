class DropUser < ActiveRecord::Migration
  def change
    def down
      drop_table :users
    end
  end
end
