# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wda_client/version'

Gem::Specification.new do |spec|
  spec.name          = "wda_client"
  spec.version       = WdaClient::VERSION
  spec.authors       = ["kanlijun"]
  spec.email         = ["kanlijun@mobanker.com"]

  spec.summary =spec.description   = %q{the Client of WebDriverAgent for iOS app automated testing}
  spec.homepage      = "https://github.com/anion102/wda_client"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files`.split("\n")
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib/wda_client.rb',
                        'lib/wda_client/driver.rb',
                        'lib/wda_client/logger_out.rb',
                        'lib/wda_client/version.rb',
                        'lib/wda_client/agent/request.rb',
                        'lib/wda_client/ios/element.rb',]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "selenium-webdriver", "~> 2.53"

end
