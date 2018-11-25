class Group < ApplicationRecord
  serialize :player_list, Array
  belongs_to :group_leader, :class_name => 'User'
end
