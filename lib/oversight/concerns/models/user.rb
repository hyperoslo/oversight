module Oversight
  module Concerns::Models::User
    extend ActiveSupport::Concern

    included do
      validates :first_name, :last_name, presence: true
      validates :phone, :email, uniqueness: true
    end
  end
end
