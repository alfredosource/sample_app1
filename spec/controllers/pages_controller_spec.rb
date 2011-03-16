require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end

    it "Should have the right title" do
      get 'home'
      response.should have_selector("title",
        :content=> "| Home")

    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end

    it "should have a title" do
      get 'contact'
      response.should have_selector("title",
        :content=>"| Contact")
    end


  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end

    it "should have a title" do
      get 'about'
      response.should have_selector("title",
      :content=>" | About")
    end
  end

  describe "Get 'help'" do
    it "should be successfull" do
      get 'help'
      response.should be_success
      end
      
    it "shoud have the right Title" do
      get 'help'
      response.should have_selector("title",
      :content=>"Help")
    end
  end

end
