module Oversight
  module Concerns::Models::Employment
    extend ActiveSupport::Concern

    included do
      belongs_to :user
      belongs_to :store

      validates :user, :store, presence: true
    end
  end
end
