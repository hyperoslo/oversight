module Oversight
  module Concerns::Models::Role
    extend ActiveSupport::Concern

    included do
      has_many :memberships

      validates :key, :title, presence: true, uniqueness: true
    end
  end
end
