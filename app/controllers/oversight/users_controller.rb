require_dependency "oversight/application_controller"

module Oversight
  class UsersController < ApplicationController
    include Concerns::Controllers::UsersController
  end
end
