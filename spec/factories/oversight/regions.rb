FactoryGirl.define do

  factory :oversight_region, class: 'Region' do
    sequence(:name) { |n| "Region ##{n}" }
  end

end
