# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sobi_cli/version'

Gem::Specification.new do |spec|
  spec.name          = "sobi_cli"
  spec.version       = SobiCli::VERSION
  spec.authors       = ["Jacek Pietrzyk"]
  spec.email         = ["jacpie3k@gmail.com"]

  spec.summary       = %q{SoBi client}
  spec.description   = %q{Client for SoBi server. Sends bike data to server.}
  spec.homepage      = "http://localhost"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency 'pry'
  spec.add_development_dependency "mock_redis"
  spec.add_runtime_dependency 'aruba', "~> 0.14.2"
  spec.add_runtime_dependency 'redis'
  spec.add_runtime_dependency 'redis-namespace'
  spec.add_runtime_dependency 'dotenv'
end
