class CreatePersonFilms < ActiveRecord::Migration[6.1]
  def change
    create_table :person_films do |t|
      t.references :person, null: false, foreign_key: true
      t.references :film, null: false, foreign_key: true

      t.timestamps
    end
  end
end
