class AddHomePlanetToPerson < ActiveRecord::Migration[6.1]
  def change
    add_column :people, :home_planet_id, :integer, to_table: { foreign_key: :planets }
  end
end
