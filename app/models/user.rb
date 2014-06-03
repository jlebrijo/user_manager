class User < ActiveRecord::Base
  belongs_to :role
  has_many :role_permissions, through: :role, source: :permissions
  has_and_belongs_to_many :permissions

  def permissions_all
    [permissions, role_permissions].flatten
  end
end
