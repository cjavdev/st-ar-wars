# == Schema Information
#
# Table name: person_films
#
#  id         :bigint           not null, primary key
#  person_id  :bigint           not null
#  film_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe PersonFilm, type: :model do
  it { should belong_to(:person) }
  it { should belong_to(:film) }
end
