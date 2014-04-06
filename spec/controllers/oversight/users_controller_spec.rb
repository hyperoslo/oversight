require 'spec_helper'

module Oversight
  describe UsersController do
    routes { Oversight::Engine.routes }

    describe "GET 'show'" do
      let(:user) { create :oversight_user }

      it "returns http success" do
        get :show, id: user.to_param
        expect(response).to be_successful
      end

      it "assigns the user to @user" do
        get :show, id: user.to_param
        expect(assigns(:user)).to eq user
      end
    end

    describe "GET 'edit'" do
      let(:user) { create :oversight_user }

      it "returns http success" do
        get 'edit', id: user.to_param
        expect(response).to be_successful
      end

      it "assigns the user to @user" do
        get :edit, id: user.to_param
        expect(assigns(:user)).to eq user
      end
    end

  end
end
