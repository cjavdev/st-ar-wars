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
require 'rails_helper'

RSpec.describe Planet, type: :model do
  it { should belong_to(:senator) }
  it { should have_many(:citizens) }
end
