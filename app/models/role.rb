class Role < ActiveRecord::Base
  has_many :users
  has_and_belongs_to_many :permissions

  scope :all_begining_with, ->(character) { where "name like ?", "#{character}%"}
end
