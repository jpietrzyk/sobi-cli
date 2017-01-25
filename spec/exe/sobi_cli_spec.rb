require 'spec_helper'
require 'mock_redis'
RSpec.describe 'SoBi command line interface', :type => :aruba do
  before { setup_aruba }
  it 'can be run' do
    run_sobi_cli
    expect(last_command_started.output).not_to eq('command not found\n')
  end

  it 'display error message and usage instructions when no bike_id given' do
    run_sobi_cli
    expect(last_command_started.output).to(
      include('error: you must specify bike_id (integer)')
    )
    expect(last_command_started.output).to(
      include('Usage: sobi_cli bike_id')
    )
  end

  it 'display error message about wrong options' do
    run_sobi_cli 5, ['-s']
    expect(last_command_started.output).to(
      eq("Can't recognize that invalid option: -s\n")
    )
  end

  it 'sends message when bike id is integer' do
    run_sobi_cli 5
    expect(last_command_started.output).to(
      eq("")
    )
  end

  it 'sends message when bike id is convertable string' do
    run_sobi_cli '5'
    expect(last_command_started.output).to(
      eq("")
    )
  end
end

def run_sobi_cli(bike_id = nil, options = [])
  $redis = MockRedis.new
  run "exe/sobi_cli #{bike_id} #{options.join(" ")}"
  before_check
end

def before_check
  stop_all_commands
  sleep(1)
end
