require 'rails_helper'

describe User, type: :model do
  it { should have_db_column(:name) }
  it { should have_db_column(:status) }
  it { should belong_to :role }
  it { should have_many :role_permissions }
  it { should have_and_belong_to_many :permissions }

  describe :permissions_all do
    let(:admin) { create :admin}
    let(:peter) { create :peter, role: admin}
    before do
      create_list :permission, 5, :peter_permissions, users: [peter]
      create_list :permission, 8, :admin_permissions, roles: [admin]
    end
    it "should retrieve permissions provided by their role and their own permissions" do
      peter.permissions_all.should include peter.role.permissions.first
      peter.permissions_all.should include peter.permissions.first
      peter.permissions_all.count.should == 13
    end
  end
end
