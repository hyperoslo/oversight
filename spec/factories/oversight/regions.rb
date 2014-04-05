FactoryGirl.define do

  factory :oversight_region, class: 'Oversight::Region' do
    sequence(:name) { |n| "Region ##{n}" }
  end

end
