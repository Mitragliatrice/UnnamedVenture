require 'rails_helper'

RSpec.describe "estimates/new", type: :view do
  before(:each) do
    assign(:estimate, Estimate.new(
      :currently_listed => 1,
      :prop_owner_name => "MyString",
      :contact_name => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :street => "MyString",
      :street2 => "MyString",
      :city => "MyString",
      :state => "MyString",
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
    ))
  end

  it "renders new estimate form" do
    render

    assert_select "form[action=?][method=?]", estimates_path, "post" do

      assert_select "input[name=?]", "estimate[currently_listed]"

      assert_select "input[name=?]", "estimate[prop_owner_name]"

      assert_select "input[name=?]", "estimate[contact_name]"

      assert_select "input[name=?]", "estimate[email]"

      assert_select "input[name=?]", "estimate[phone]"

      assert_select "input[name=?]", "estimate[street]"

      assert_select "input[name=?]", "estimate[street2]"

      assert_select "input[name=?]", "estimate[city]"

      assert_select "input[name=?]", "estimate[state]"

      assert_select "input[name=?]", "estimate[zip]"

      assert_select "input[name=?]", "estimate[beds]"

      assert_select "input[name=?]", "estimate[baths]"

      assert_select "input[name=?]", "estimate[home_sf]"

      assert_select "input[name=?]", "estimate[prop_sf]"

      assert_select "input[name=?]", "estimate[num_garages]"

      assert_select "input[name=?]", "estimate[pool]"

      assert_select "input[name=?]", "estimate[spa]"

      assert_select "textarea[name=?]", "estimate[upgrades]"

      assert_select "textarea[name=?]", "estimate[damage]"

      assert_select "textarea[name=?]", "estimate[photo]"

      assert_select "textarea[name=?]", "estimate[tod_call]"
    end
  end
end
