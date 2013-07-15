FactoryGirl.define do
  factory :restaurant do
    sequence(:name) do |n|
      "J. Pace and Son Location ##{n}"
    end
    description "some thing"
    address "333 Beacon St, Boston, MA"
    phone "617-555-1234"

    association :owner
  end
end