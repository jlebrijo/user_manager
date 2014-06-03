require 'rails_helper'

describe User, type: :model do
  it { should have_db_column(:name) }
  it { should have_db_column(:status) }
  it { should belong_to :role }
  it { should have_many :permissions }
end
