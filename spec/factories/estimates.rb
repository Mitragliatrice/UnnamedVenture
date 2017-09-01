FactoryGirl.define do
  factory :estimate do
    currently_listed 1
    prop_owner_name "MyString"
    contact_name "MyString"
    email "MyString"
    phone "MyString"
    street "MyString"
    street2 "MyString"
    city "MyString"
    state "MyString"
    zip ""
    beds ""
    baths ""
    home_sf ""
    prop_sf ""
    num_garages ""
    pool ""
    spa ""
    upgrades "MyText"
    damage "MyText"
    photo "MyText"
    tod_call "MyText"
  end
end
