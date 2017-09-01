require 'rails_helper'

RSpec.describe "estimates/show", type: :view do
  before(:each) do
    @estimate = assign(:estimate, Estimate.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Prop Owner Name/)
    expect(rendered).to match(/Contact Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Street/)
    expect(rendered).to match(/Street2/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
