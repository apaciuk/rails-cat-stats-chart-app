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
#  owner_id        :integer(4)       default(0), not null
#
# Indexes
#
#  index_cats_on_owner_id  (owner_id)
#
# Foreign Keys
#
#  fk_rails_...  (owner_id => users.id)
#
class Cat < ApplicationRecord
  belongs_to :user, foreign_key: 'owner_id'
end
