class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
    	t.string "name"
    	t.string "ship"
    	t.string "planet"
    	t.string "side"
    	t.string "weapon"
    	t.integer "user_id"

      t.timestamps null: false
    end
  end
end
