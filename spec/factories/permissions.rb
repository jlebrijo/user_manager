# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :permission do
    name "Create Posts"
    trait :admin_permissions do
      sequence(:name) { |n| "Admin Permissions #{n}" }
    end
    trait :peter_permissions do
      sequence(:name) { |n| "Peter Permissions #{n}" }
    end
  end
end
