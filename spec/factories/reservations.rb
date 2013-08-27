# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :reservation do
    starts_at "2013-08-27 13:32:04"
    ends_at "2013-08-27 13:32:04"
    person_count 1
    email "MyString"
    name "MyString"
    phone "MyString"
    special_wishes "MyText"
    added_by 1
    updated_by 1
    canceled_by 1
    canceled_on 1
  end
end
