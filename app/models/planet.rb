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
end
