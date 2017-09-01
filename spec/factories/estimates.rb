FactoryGirl.define do
  factory :estimate do
    currently_listed 0
    prop_owner_name "Donald"
    contact_name "Trump"
    email "estimate@test.com"
    phone "5555555555"
    street "123 abc"
    street2 "suite 2b"
    city "LA"
    state "CA"
    zip 80000
    beds 10
    baths 5
    home_sf 500
    prop_sf 1000
    num_garages 1
    pool 0
    spa 0
    upgrades "None"
    damage "None"
    tod_call "Any"
  end
end
