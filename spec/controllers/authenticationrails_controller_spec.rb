require 'rails_helper'

RSpec.describe AuthenticationrailsController, type: :controller do

  describe "GET #g" do
    it "returns http success" do
      get :g
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #controller" do
    it "returns http success" do
      get :controller
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #Authentication" do
    it "returns http success" do
      get :Authentication
      expect(response).to have_http_status(:success)
    end
  end

end
