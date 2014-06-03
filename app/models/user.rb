class User < ActiveRecord::Base
  belongs_to :role
  has_many :role_permissions, through: :role, class_name: 'Permission'
  has_and_belongs_to_many :permissions
end
