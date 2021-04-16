class AddSenatorIdToPlanet < ActiveRecord::Migration[6.1]
  def change
    add_column :planets, :senator_id, :integer
  end
end
