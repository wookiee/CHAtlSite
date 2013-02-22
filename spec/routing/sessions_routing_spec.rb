require 'spec_helper'
describe "routing to sessions" do
  it "routes /auth/twitter/callback" do
    expect(:get => "/auth/twitter/callback").to route_to(
      :controller => "sessions",
      :action => "create",
      :provider => "twitter"
    )
  end

  it "routes /auth/google/callback" do
    expect(:get => "/auth/google/callback").to route_to(
      :controller => "sessions",
      :action => "create",
      :provider => "google"
    )
  end

  it "routes /auth/yahoo/callback" do
    expect(:get => "/auth/yahoo/callback").to route_to(
      :controller => "sessions",
      :action => "create",
      :provider => "yahoo"
    )
  end

  it "routes /auth/verisign/callback" do
    expect(:get => "/auth/verisign/callback").to route_to(
      :controller => "sessions",
      :action => "create",
      :provider => "verisign"
    )
  end

  it "routes /auth/open_id/callback" do
    expect(:get => "/auth/open_id/callback").to route_to(
      :controller => "sessions",
      :action => "create",
      :provider => "open_id"
    )
  end

  it "routes /openid_url" do
    expect(:get => "/openid_url").to route_to(
      :controller => "sessions",
      :action => "openid_url"
    )
  end

  it "routes /auth/failure" do
    expect(:get => "/auth/failure").to route_to(
      :controller => "sessions",
      :action => "failure"
    )
  end

  it "routes /signout" do
    expect(:get => "/signout").to route_to(
      :controller => "sessions",
      :action => "destroy"
    )
  end
end
