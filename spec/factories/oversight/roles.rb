FactoryGirl.define do

  factory :oversight_role, :class => 'Oversight::Role' do
    sequence(:title) { |n| "Role ##{n}" }
    key { |role| role.title }
  end

end
