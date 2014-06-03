require 'rails_helper'

describe Permission, type: :model do
  it { should have_db_column(:name) }
  it { should have_and_belong_to_many :roles }
  it { should have_and_belong_to_many :users }
end
