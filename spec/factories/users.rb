# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    provider "MyString"
    uid "MyString"
    role "member"
  end

  factory :admin do
    provider "MyString"
    uid "MyString"
    role "admin"
  end

  factory :bob, class: User do
    provider "MyString"
    uid "MyString"
    first_name "MyString"
    last_name "MyString"
    role "member"
    profile_image_uri "MyString"
  end

  factory :alice, class: User do
    provider "MyString"
    uid "MyString"
    first_name "MyString"
    last_name "MyString"
    role "member"
    email "MyString"
  end
end
