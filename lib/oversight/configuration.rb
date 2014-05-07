module Oversight
  class Configuration
    attr_accessor :email_validation, :phone_validation

    def initialize
      @email_validation = { presence: true, uniqueness: true }
      @phone_validation = { presence: true, uniqueness: true }
    end
  end
end
