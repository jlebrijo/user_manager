require 'rails_helper'

describe Permission, type: :model do
  it { should have_db_column(:name) }
  it { should belong_to :role }
end
