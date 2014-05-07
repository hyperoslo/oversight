require "oversight/engine"
require "oversight/configuration"
require "oversight/concerns"

module Oversight
  class << self
    def config
      @config ||= Oversight::Configuration.new
    end

    def configure
      yield config
    end
  end
end
