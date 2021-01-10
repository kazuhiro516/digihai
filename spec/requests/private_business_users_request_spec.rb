require 'rails_helper'

RSpec.describe "PrivateBusinessUsers", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/private_business_users/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/private_business_users/show"
      expect(response).to have_http_status(:success)
    end
  end

end
