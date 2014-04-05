FactoryGirl.define do

  factory :oversight_store, class: 'Oversight::Store' do
    association :region, factory: :oversight_region
    sequence(:name) { |n| "Store ##{n}" }
  end

end
