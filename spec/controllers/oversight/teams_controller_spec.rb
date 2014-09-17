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

    describe "GET 'edit'" do
      let(:user) { create :oversight_user }
      let(:team) do
        create(:oversight_team).tap do |team|
          team.users << user
        end
      end

      it "returns http success" do
        get :edit, id: team.to_param
        response.should be_success
      end

      it "renders the edit template" do
        get :edit, id: team.to_param
        response.should render_template :edit
      end

      context "when routed through a user" do
        it "assigns the team to @team" do
          get :edit, user_id: user.to_param, id: team.to_param
          expect(assigns(:team)).to eq team
        end
      end

      context "when not routed through a user" do
        it "assigns the team to @team" do
          get :edit, id: team.to_param
          expect(assigns(:team)).to eq team
        end
      end
    end

    describe "PATCH 'update'" do
      let(:user) { create :oversight_user }
      let!(:team) do
        create(:oversight_team, name: "Team Toodaloo").tap do |team|
          team.users << user
        end
      end
      let(:new_attrs) { { name: "New team title" } }

      context "when routed through a user" do
        it "assigns the team to @team" do
          patch :update, user_id: user.to_param, id: team.to_param, team: new_attrs
          expect(assigns(:team)).to eq team
        end

        context "when it's invalid" do
          before { allow_any_instance_of(Oversight::Team).to receive(:valid?).and_return true }

          it "saves the new attributes" do
            patch :update, user_id: user.to_param, id: team.to_param, team: new_attrs
            expect(team.reload.name).to eq "New team title"
          end

          it "redirects to the team, through the user" do
            patch :update, user_id: user.to_param, id: team.to_param, team: new_attrs
            response.should redirect_to [ user, team ]
          end
        end

        context "when it's valid" do
          before { allow_any_instance_of(Oversight::Team).to receive(:valid?).and_return false }

          it "re-renders the edit template" do
            patch :update, id: team.to_param, team: new_attrs
            response.should render_template :edit
          end
        end
      end

      context "when not routed through a user" do
        it "assigns the team to @team" do
          patch :update, id: team.to_param, team: new_attrs
          expect(assigns(:team)).to eq team
        end

        context "when it's invalid" do
          before { allow_any_instance_of(Oversight::Team).to receive(:valid?).and_return true }

          it "saves the new attributes" do
            patch :update, id: team.to_param, team: new_attrs
            expect(team.reload.name).to eq "New team title"
          end

          it "redirects to the team" do
            patch :update, id: team.to_param, team: new_attrs
            response.should redirect_to team
          end
        end

        context "when it's valid" do
          before { allow_any_instance_of(Oversight::Team).to receive(:valid?).and_return false }

          it "re-renders the edit template" do
            patch :update, id: team.to_param, team: new_attrs
            response.should render_template :edit
          end
        end
      end
    end
  end
end
