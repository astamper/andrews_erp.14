FactoryGirl.define do
  factory :order do
    status "MyString"
    first_name "MyString"
    last_name "MyString"
    fob_date "2016-04-01"
    fob_time "MyString"
    paid false
    shipping_type "MyString"
    customer nil
  end
end
