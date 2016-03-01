require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    it "should have the right title" do
      get 'home'
      response.should have_selector("title",:content=>"The home page")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    it "should have the right contact" do
      get 'contact'
      response.should have_selector("title",:content=>"The contact page")
    end
  end

  describe "GET 'propos'" do
    it "should be successful" do
      get 'propos'
      response.should be_success
    end
    it "should have the right title" do
      get 'propos'
      response.should have_selector("title",:content=>"The propos page")
    end
  end

end
