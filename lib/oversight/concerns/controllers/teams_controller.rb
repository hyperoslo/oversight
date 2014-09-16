module Oversight
  module Concerns::Controllers::TeamsController
    extend ActiveSupport::Concern

    included { before_action :set_user }

    def index
      @teams = if @user
                 @user.teams
               else
                 Oversight::Team.all
               end
    end

    def show
      @team = if @user
                @user.teams.find params[:id]
              else
                Oversight::Team.find params[:id]
              end
    end

    private

    def set_user
      @user = Oversight::User.find params[:user_id] if params[:user_id]
    end
  end
end
