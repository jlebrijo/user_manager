require 'rails_helper'

describe User, type: :model do
  it { should have_db_column(:name) }
  it { should have_db_column(:status) }
  it { should belong_to :role }
  it { should have_many :role_permissions }
  it { should have_and_belong_to_many :permissions }
end
