module Oversight
  class Configuration
    attr_accessor :first_name_validation, :last_name_validation,
      :email_validation, :phone_validation

    def initialize
      @first_name_validation = { presence: true }
      @last_name_validation  = { presence: true }
      @email_validation      = { presence: true, uniqueness: true }
      @phone_validation      = { presence: true, uniqueness: true }
    end
  end
end
