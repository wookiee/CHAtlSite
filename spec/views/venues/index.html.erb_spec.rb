require 'spec_helper'

describe "venues/index", :type => :view do
  before(:each) do
    assign(:venues, [
      stub_model(Venue,
        :name => "Name",
        :street_address => "Street Address",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :notes => "Notes",
        :map_url => "Map URL"
      ),
      stub_model(Venue,
        :name => "Name",
        :street_address => "Street Address",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :notes => "Notes",
        :map_url => "Map URL"
      )
    ])
  end

  it "renders a list of venues" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Street Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Notes".to_s, :count => 2
    assert_select "tr>td", :text => "Map URL".to_s, :count => 2
  end
end
