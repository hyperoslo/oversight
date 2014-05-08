module Oversight
  module Concerns::Models::User
    extend ActiveSupport::Concern

    included do
      has_many :employments, dependent: :destroy
      has_many :stores, through: :employments

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
