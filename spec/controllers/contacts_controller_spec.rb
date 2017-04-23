require 'rails_helper'

RSpec.describe ContactsController, type: :controller do

  describe "GET #form" do
    it "returns http success" do
      get :form
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #mail" do
    it "returns http success" do
      get :mail
      expect(response).to have_http_status(:success)
    end
  end

end
