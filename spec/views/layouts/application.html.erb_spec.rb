require 'spec_helper'

describe "layouts/application.html.erb" do
  # 
  # Administrators
  #

  describe "with logged in admin" do
    # before(:each) do
    #   @user = double("user")
    #   @user.stub(:admin?).and_return(true)
    #   controller.stub(:current_user).and_return(@user)
    # end

    # it "renders Meetings in nav bar" do
    #   render
    #   assert_select "ul#nav_bar>li>a", :text => "Meetings".to_s
    # end
    
    it "renders Venues in nav bar"
  end

  # 
  # Members and guests
  # 

  describe "with non-admin user" do
    it "renders Meetings in nav bar"
    it "does not render Venues in nav bar"
  end
end
