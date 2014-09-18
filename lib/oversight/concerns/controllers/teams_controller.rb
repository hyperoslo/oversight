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

    def edit
    end

    def update
      if @team.update team_params
        redirect_to update_redir_path
      else
        render :edit
      end
    end

    protected

    def team_params
      params.require(:team).permit(
        :name, :region_id,
        memberships_attributes: [ :id, :user_id, :_destroy ]
      )
    end

    def update_redir_path
      @user ? url_for([ @user, @team ]) : url_for(@team)
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
