# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :venue do
    name "MyString"
    street_address "MyString"
    city "MyString"
    state "MyString"
    zip "MyString"
    notes "MyText"
    map_url "MyText"
  end
end
