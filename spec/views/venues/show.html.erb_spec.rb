require 'spec_helper'

describe "venues/show", :type => :view do
  before(:each) do
    @venue = assign(:venue, stub_model(Venue,
      :name => "Name",
      :street_address => "Street Address",
      :city => "City",
      :state => "State",
      :zip => "Zip",
      :notes => "MyText",
      :map_url => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Street Address/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Zip/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
