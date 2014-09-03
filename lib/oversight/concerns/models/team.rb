module Oversight
  module Concerns::Models::Team
    extend ActiveSupport::Concern

    included do
      has_many :memberships, dependent: :destroy
      has_many :users, through: :memberships

      belongs_to :region

      validates :region, :name, presence: true
    end
  end
end
