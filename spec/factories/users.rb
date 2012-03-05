FactoryGirl.define do
  factory :user do
   email 'john@doe.com'
   password 'test123'
   password_confirmation 'test123'
  end
end
