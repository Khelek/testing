FactoryGirl.define do
  factory :account do
    balance { generate :integer }
    currency { generate :string }
    name { generate :string }
  end
end
