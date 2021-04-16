class CreateFilmsPeople < ActiveRecord::Migration[6.1]
  def change
    create_table :films_people do |t|
      t.references :film, null: false, foreign_key: true
      t.references :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
