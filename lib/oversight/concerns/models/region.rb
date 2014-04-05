module Oversight
  module Concerns::Models::Region
    extend ActiveSupport::Concern

    included do
      validates :name, presence: true, uniqueness: true
    end
  end
end
