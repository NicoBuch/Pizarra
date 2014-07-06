# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :entry do
    transaction_date "2014-07-06 15:47:42"
    type ""
    my_coin "MyString"
    my_amount "9.99"
    unity_price "9.99"
    your_coin "MyString"
    your_amount "9.99"
    user_id nil
  end
end
