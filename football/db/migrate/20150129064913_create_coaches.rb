class CreateCoaches < ActiveRecord::Migration
  def change
    create_table :coaches do |t|
      t.string :name
      t.integer :team
      t.timestamps null: false
    end
  end
end
