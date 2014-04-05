require 'spec_helper'

module Oversight
  describe User do
    describe '#name' do
      context 'when it has a first name, middle name(s) and last name' do
        subject do
          create :oversight_user,
            first_name: 'Illidan',
            middle_names: '"The Betrayer"',
            last_name: 'Stormrage'
        end

        it 'combines all names, separated with a single space' do
          expect(subject.name).to eq 'Illidan "The Betrayer" Stormrage'
        end
      end

      context 'when it has a first name and last name, but no middle name(s)' do
        subject do
          create :oversight_user,
            first_name: 'Khelgar',
            middle_names: nil,
            last_name: 'Ironfist'
        end

        it 'combines all names, separated with a single space' do
          expect(subject.name).to eq 'Khelgar Ironfist'
        end
      end
    end
  end
end
