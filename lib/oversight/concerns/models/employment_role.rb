module Oversight
  module Concerns::Models::EmploymentRole
    extend ActiveSupport::Concern

    included do
      has_many :employments

      validates :key, :title, presence: true, uniqueness: true
    end
  end
end
