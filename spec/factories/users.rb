# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name "User name"
    role nil
    status "active"
    factory :peter do
      name "Peter"
    end
  end
end
