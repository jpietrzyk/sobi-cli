require 'spec_helper'

class DummyTestClass
  include SobiCli::BikeHelper
end

module SobiCli
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
      it 'has lenght of 11' do
        expect(dummy.short_id.length).to eq(11)
      end
    end
  end
end
