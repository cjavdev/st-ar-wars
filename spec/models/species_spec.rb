# == Schema Information
#
# Table name: species
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Species, type: :model do
  it { should have_many(:people) }
end
