require 'rails_helper'

describe Role, type: :model do
  it { should have_db_column(:name) }
  it { should have_and_belong_to_many :permissions }
  it { should have_many :users }
end
