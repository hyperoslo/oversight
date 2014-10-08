module Oversight
  module Concerns::Models::User
    extend ActiveSupport::Concern

    included do
      has_many :memberships, dependent: :destroy, inverse_of: :user
      has_many :teams, through: :memberships, inverse_of: :users

      scope :active,   -> { where active: true }
      scope :inactive, -> { where active: false }

      validates :first_name, :last_name, presence: true
      validates :phone, Oversight.config.phone_validation unless Oversight.config.phone_validation.empty?
      validates :email, Oversight.config.email_validation unless Oversight.config.email_validation.empty?

      def name
        [first_name, middle_names, last_name].compact.join " "
      end
    end
  end
end
