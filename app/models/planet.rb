# == Schema Information
#
# Table name: planets
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  senator_id :integer
#
class Planet < ApplicationRecord
  belongs_to :senator, class_name: 'Person'
  has_many :citizens, class_name: 'Person', foreign_key: :home_planet_id
end
