require 'spec_helper'

module Oversight
  describe Membership do
    describe "associations" do
      let!(:user)       { create :oversight_user }
      let!(:team)       { create :oversight_team }
      let!(:membership) { create :oversight_membership, user: user, team: team, role: role }
      let!(:role)       { create :oversight_role }

      it "has to a role" do
        expect(membership.role).to eq role
      end
    end
  end
end
