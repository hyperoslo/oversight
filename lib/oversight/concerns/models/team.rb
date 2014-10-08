module Oversight
  module Concerns::Models::Team
    extend ActiveSupport::Concern

    included do
      has_many :memberships, dependent: :destroy, inverse_of: :team
      has_many :users, through: :memberships, inverse_of: :teams

      belongs_to :region

      validates :region, :name, presence: true
    end
  end
end
