FactoryGirl.define do
  factory :user do
=begin
    name     "Michael Hartl"
    email    "michael@example.com"
    password "foobar"
    password_confirmation "foobar"
=end
  #   name     "Neil Rogers"
  #   email    "neil.rogers@hotmail.com"
  #   password "foobar"
  #   password_confirmation "foobar"
    sequence(:name)  { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com"}
    password "foobar"
    password_confirmation "foobar"
  end
end