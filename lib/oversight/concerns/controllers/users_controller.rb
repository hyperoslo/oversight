module Oversight
  module Concerns::Controllers::UsersController
    extend ActiveSupport::Concern

    def show
      @user = Oversight::User.find params[:id]
    end

    def edit
      @user = Oversight::User.find params[:id]
    end
  end
end
