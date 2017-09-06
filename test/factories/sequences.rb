FactoryGirl.define do

  sequence :string do |n|
    "string#{n}"
  end

  sequence :integer do |n|
    n
  end

end
