module Oversight
  module Concerns::Controllers::TeamsController
    extend ActiveSupport::Concern

    def index
      @teams = Oversight::Team.all
    end

    def show
      @team = Oversight::Team.find params[:id]
    end
  end
end
