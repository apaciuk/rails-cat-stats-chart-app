# == Schema Information
#
# Table name: cats
#
#  id              :bigint(8)        not null, primary key
#  age             :integer(4)
#  avatar          :string
#  bio             :text
#  characteristics :string
#  color           :string
#  gender          :string
#  name            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
require 'rails_helper'

RSpec.describe Cat, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
