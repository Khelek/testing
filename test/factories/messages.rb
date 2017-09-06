FactoryGirl.define do
  factory :message do
    text { generate :string }
    title { generate :string }
  end
end
