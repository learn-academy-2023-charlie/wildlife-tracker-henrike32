class CreateWildlifeTrackers < ActiveRecord::Migration[7.0]
  def change
    create_table :wildlife_trackers do |t|
      t.string :name
      t.string :species
      t.string :size

      t.timestamps
    end
  end
end
