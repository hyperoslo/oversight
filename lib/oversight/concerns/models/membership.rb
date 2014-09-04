module Oversight
  module Concerns::Models::Membership
    extend ActiveSupport::Concern

    included do
      belongs_to :user
      belongs_to :team
      belongs_to :role

      validates :user, :team, presence: true
    end
  end
end
