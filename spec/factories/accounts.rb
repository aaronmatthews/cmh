FactoryGirl.define do
  factory :account do
    user_id 1
    name 'Checking'
    starting_balance '1000'
    current_balance '2000'
    avg_daily_in '300'
    avg_daily_out '100'
  end
end
