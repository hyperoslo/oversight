FactoryGirl.define do

  factory :oversight_team, class: 'Oversight::Team' do
    association :region, factory: :oversight_region
    sequence(:name) { |n| "Store ##{n}" }
  end

end
