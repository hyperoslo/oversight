require 'spec_helper'

module Oversight
  describe TeamsController do
    routes { Oversight::Engine.routes }

    describe "GET 'index'" do
      let(:teams) { create_list :oversight_team, 3 }

      it "returns http success" do
        get :index
        response.should be_success
      end

      it "assigns the teams to @teams" do
        get :index
        expect(assigns(:teams)).to eq teams
      end
    end

    describe "GET 'show'" do
      let(:team) { create :oversight_team }

      it "returns http success" do
        get :show, id: team.to_param
        response.should be_success
      end

      it "assigns the team to @team" do
        get :show, id: team.to_param
        expect(assigns(:team)).to eq team
      end
    end
  end
end
