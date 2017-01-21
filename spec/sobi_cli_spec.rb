require 'spec_helper'

describe SobiCli do
  it 'has a version number' do
    expect(SobiCli::VERSION).not_to be nil
  end

  it 'loads a BikeClient class' do
    expect(SobiCli::Clients::BikeClient).to be_a(Class)
  end

  it 'loads a BikeHelper module' do
    expect(SobiCli::Helpers::BikeHelper).to be_a(Module)
  end
end
