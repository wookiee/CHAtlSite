require 'spec_helper'
describe "routing to root", :type => :routing do
  it "routes /" do
    expect(:get => "/").to route_to(
      :controller => "welcome",
      :action => "index"
    )
  end
end
