FactoryGirl.define do

  factory :oversight_membership, class: 'Oversight::Membership' do
    association :user, factory: :oversight_user
    association :team, factory: :oversight_team
  end

end
