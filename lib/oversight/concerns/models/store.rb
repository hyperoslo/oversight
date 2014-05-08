module Oversight
  module Concerns::Models::Store
    extend ActiveSupport::Concern

    included do
      has_many :employments, dependent: :destroy
      has_many :users, through: :employments

      belongs_to :region

      validates :region, :name, presence: true
    end
  end
end
