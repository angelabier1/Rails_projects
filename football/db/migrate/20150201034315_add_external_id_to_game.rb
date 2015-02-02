class AddExternalIdToGame < ActiveRecord::Migration
  def change
    add_column :games, :external_id, :string
  end
end
