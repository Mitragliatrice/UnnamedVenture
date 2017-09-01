require 'rails_helper'

RSpec.describe "estimates/index", type: :view do
  before(:each) do
    assign(:estimates, [
      Estimate.create!(
        :currently_listed => 2,
        :prop_owner_name => "Prop Owner Name",
        :contact_name => "Contact Name",
        :email => "Email",
        :phone => "Phone",
        :street => "Street",
        :street2 => "Street2",
        :city => "City",
        :state => "State",
        :zip => "",
        :beds => "",
        :baths => "",
        :home_sf => "",
        :prop_sf => "",
        :num_garages => "",
        :pool => "",
        :spa => "",
        :upgrades => "MyText",
        :damage => "MyText",
        :photo => "MyText",
        :tod_call => "MyText"
      ),
      Estimate.create!(
        :currently_listed => 2,
        :prop_owner_name => "Prop Owner Name",
        :contact_name => "Contact Name",
        :email => "Email",
        :phone => "Phone",
        :street => "Street",
        :street2 => "Street2",
        :city => "City",
        :state => "State",
        :zip => "",
        :beds => "",
        :baths => "",
        :home_sf => "",
        :prop_sf => "",
        :num_garages => "",
        :pool => "",
        :spa => "",
        :upgrades => "MyText",
        :damage => "MyText",
        :photo => "MyText",
        :tod_call => "MyText"
      )
    ])
  end

  it "renders a list of estimates" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Prop Owner Name".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Street".to_s, :count => 2
    assert_select "tr>td", :text => "Street2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
