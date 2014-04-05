module Oversight
  module Concerns::Models::User
    extend ActiveSupport::Concern

    included do
      has_many :employments
      has_many :stores, through: :employments

      validates :first_name, :last_name, presence: true
      validates :phone, :email, uniqueness: true

      def name
        [first_name, middle_names, last_name].compact.join " "
      end
    end
  end
end
