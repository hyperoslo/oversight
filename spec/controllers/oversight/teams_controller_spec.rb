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

      context "when routed through a user" do
        let(:user) { create :oversight_user }
        let!(:all_teams) { create_list :oversight_team, 3 }
        let!(:teams) do
          create_list(:oversight_team, 3).each do |team|
            team.users << user
            team
          end
        end

        it "assigns all the user's teams to @teams" do
          get :index, user_id: user.to_param
          expect(assigns(:teams)).to eq teams
        end
      end

      context "when routed through a user" do
        it "assigns all teams to @teams" do
          get :index
          expect(assigns(:teams)).to eq teams
        end
      end
    end

    describe "GET 'show'" do
      let(:user) { create :oversight_user }
      let(:team) do
        create(:oversight_team).tap do |team|
          team.users << user
        end
      end

      it "returns http success" do
        get :show, id: team.to_param
        response.should be_success
      end

      context "when routed through a user" do
        it "assigns the team to @team" do
          get :show, user_id: user.to_param, id: team.to_param
          expect(assigns(:team)).to eq team
        end
      end

      context "when not routed through a user" do
        it "assigns the team to @team" do
          get :show, id: team.to_param
          expect(assigns(:team)).to eq team
        end
      end
    end
  end
end
