# == Schema Information
#
# Table name: people
#
#  id             :bigint           not null, primary key
#  name           :string
#  species_id     :bigint           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  home_planet_id :integer
#
class Person < ApplicationRecord
  belongs_to :species
  belongs_to :home_planet, class_name: 'Planet'
  has_many :person_films
  has_many :films, through: :person_films
  has_one :senator, through: :home_planet
  has_many :citizens, through: :home_planet
end
