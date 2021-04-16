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
require 'rails_helper'

RSpec.describe Person, type: :model do
  it { should belong_to(:species) }
  it { should belong_to(:home_planet) }
  it { should have_one(:senator).through(:home_planet) }
  it { should have_many(:citizens).through(:home_planet) }
  it { should have_many(:person_films) }
  it { should have_many(:films).through(:person_films) }
end
