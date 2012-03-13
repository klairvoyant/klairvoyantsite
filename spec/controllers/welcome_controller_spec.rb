require 'spec_helper'

describe WelcomeController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'services'" do
    it "returns http success" do
      get 'services'
      response.should be_success
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
  end

  describe "GET 'rails'" do
    it "returns http success" do
      get 'rails'
      response.should be_success
    end
  end

  describe "GET 'graphic'" do
    it "returns http success" do
      get 'graphic'
      response.should be_success
    end
  end

  describe "GET 'design'" do
    it "returns http success" do
      get 'design'
      response.should be_success
    end
  end

  describe "GET 'marketing'" do
    it "returns http success" do
      get 'marketing'
      response.should be_success
    end
  end

end
