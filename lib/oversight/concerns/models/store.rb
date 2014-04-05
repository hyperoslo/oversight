module Oversight
  module Concerns::Models::Store
    extend ActiveSupport::Concern

    included do
      belongs_to :region

      validates :region, :name, presence: true
    end
  end
end
