FactoryGirl.define do

  factory :oversight_user, class: 'Oversight::User' do
    first_name 'Clark'
    last_name 'Kent'

    sequence(:email) { |n| "clark#{n}@example.com" }
    sequence(:phone) { |n| "%08d" % n }

    trait(:active)   { active true }
    trait(:inactive) { active false }
  end

end
