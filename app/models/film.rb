# == Schema Information
#
# Table name: films
#
#  id         :bigint           not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Film < ApplicationRecord
  has_many :person_films
  has_many :people, through: :person_films
end
