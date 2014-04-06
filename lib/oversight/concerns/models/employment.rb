module Oversight
  module Concerns::Models::Employment
    extend ActiveSupport::Concern

    included do
      belongs_to :user
      belongs_to :store
      belongs_to :employment_role

      validates :user, :store, presence: true
    end
  end
end
