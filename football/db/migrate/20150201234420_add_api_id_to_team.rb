class AddApiIdToTeam < ActiveRecord::Migration
  def change
    remove_column :teams, :external_id
    add_column :teams, :api_id, :string
  end
end
