require 'rails_helper'

describe Role, type: :model do
  it { should have_db_column(:name) }
  it { should have_and_belong_to_many :permissions }
  it { should have_many :users }

  describe :all_begining_with do
    let(:admin) { create :admin }
    let(:author) { create :role, name: "author" }
    it "should retrieve all roles which begin with a character" do
      Role.all_begining_with("a").should == [admin, author]
      Role.all_begining_with("b").should be_empty
    end
  end
end
