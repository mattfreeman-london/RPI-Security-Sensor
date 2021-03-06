require 'rails_helper'

RSpec.describe FeedController, type: :controller do
  include Devise::Test::ControllerHelpers

  let(:user) { create(:user) }

  before(:all) do
    FactoryBot.define do
      factory :user do
        email { "test@2.com" }
        password { "password" }
        pi_key { "xxxxx" }
      end
    end
  end

  before(:each) do
    sign_in user
  end


  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end


end
