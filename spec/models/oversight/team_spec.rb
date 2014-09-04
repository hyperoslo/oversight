require 'spec_helper'

module Oversight
  describe Team do
    describe "associations" do
      let!(:region) { create :oversight_region }
      let!(:team)   { create :oversight_team, region: region }

      it "belongs to a region" do
        expect(team.region).to eq region
      end
    end
  end
end
