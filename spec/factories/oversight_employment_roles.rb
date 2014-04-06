FactoryGirl.define do

  factory :oversight_employment_role, :class => 'EmploymentRole' do
    sequence(:title) { |n| "Employment Role ##{n}" }
    key { |role| role.title }
  end

end
