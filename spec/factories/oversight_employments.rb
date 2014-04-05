FactoryGirl.define do

  factory :oversight_employment, class: 'Oversight::Employment' do
    association :user,  factory: :oversight_user
    association :store, factory: :oversight_store
  end

end
