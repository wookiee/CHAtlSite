require 'spec_helper'

describe "venues/new", :type => :view do
  before(:each) do
    assign(:venue, stub_model(Venue,
      :name => "MyString",
      :street_address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString",
      :notes => "MyText",
      :map_url => "MyText"
    ).as_new_record)
  end

  it "renders new venue form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => venues_path, :method => "post" do
      assert_select "input#venue_venue_type", :name => "venue[venue_type]"
      assert_select "input#venue_name", :name => "venue[name]"
      assert_select "input#venue_street_address", :name => "venue[street_address]"
      assert_select "input#venue_city", :name => "venue[city]"
      assert_select "input#venue_state", :name => "venue[state]"
      assert_select "input#venue_zip", :name => "venue[zip]"
      assert_select "textarea#venue_notes", :name => "venue[notes]"
      assert_select "textarea#venue_map_url", :name => "venue[map_url]"
    end
  end
end
