require 'spec_helper'

class DummyTestClass
  include SobiCli::Helpers::BikeHelper
end

module SobiCli
  module Helpers
    describe BikeHelper do
      let(:dummy) { DummyTestClass.new }
      describe '#token' do
        it 'has lenght of 690 without args' do
          expect(dummy.token.length).to eq(690)
        end

        it 'has defined length' do
          expect(dummy.token(50).length).to eq(50)
        end
      end

      describe '#short_id' do
        let(:ids) { [] }
        it 'has lenght of 12' do
          expect(dummy.short_id.length).to eq(12)
        end

        it 'have to be unique' do
          1_000_000.times do
            ids.push dummy.short_id
          end

          expect(ids.uniq.length).to eq(1_000_000)
        end
      end
    end
  end
end
