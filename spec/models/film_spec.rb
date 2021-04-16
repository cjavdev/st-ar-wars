# == Schema Information
#
# Table name: films
#
#  id         :bigint           not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Film, type: :model do
  it { should have_many(:people).through(:person_films)}
end
