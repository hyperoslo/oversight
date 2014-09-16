module Oversight
  module Concerns::Controllers::TeamsController
    extend ActiveSupport::Concern

    included do
      before_action :set_user

      before_action :set_teams, only: :index
      before_action :set_team, only: [ :show, :edit, :update ]
    end

    def index
    end

    def show
    end

    private

    def set_user
      @user = Oversight::User.find params[:user_id] if params[:user_id]
    end

    def set_teams
      @teams = if @user
                 @user.teams
               else
                 Oversight::Team.all
               end
    end

    def set_team
      @team = if @user
                @user.teams.find params[:id]
              else
                Oversight::Team.find params[:id]
              end
    end
  end
end
