require_dependency "oversight/application_controller"

module Oversight
  class TeamsController < ApplicationController
    include Concerns::Controllers::TeamsController
  end
end
