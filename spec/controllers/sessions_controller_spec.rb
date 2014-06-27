require 'spec_helper'

describe SessionsController, :type => :controller do
  describe "POST create" do
    before(:each) do
      request.env["omniauth.auth"] = { "provider" =>  "MyString", "uid" => "MyString" }
    end

    describe "with existing user" do
      it "should assign session[:user_id]" do
        user = FactoryGirl.create(:user)
        post :create
        expect(session[:user_id]).to_not be_nil
      end

      it "should redirect to root_url" do
        user = FactoryGirl.create(:user)
        post :create
        expect(response).to redirect_to(root_url)
      end
    end

    describe "with new user" do
      before(:each) do
        @user_double = double("User")
        allow(@user_double).to receive(:id) { 2 }
        expect(User).to receive(:create_with_omniauth).and_return(@user_double)
      end

      it "should assign session[:user_id]" do
        post :create
        expect(session[:user_id]).to_not be_nil
      end

      it "should redirect to edit user" do
        post :create
        expect(response).to redirect_to(edit_user_url(@user_double))
      end
    end
  end
end
