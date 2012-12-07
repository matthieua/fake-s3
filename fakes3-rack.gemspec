# -*- encoding: utf-8 -*-
require File.join(File.dirname(__FILE__), 'lib', 'fakes3-rack', 'version')

Gem::Specification.new do |s|
  s.name        = "fakes3-rack"
  s.version     = FakeS3Rack::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Curtis Spencer", "Mario Visic", "Matthieu Aussaguel"]
  s.email       = ["thorin@gmail.com", "mario@mariovisic.com", "matthieu.aussaguel@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{FakeS3 Rack is a mountable rack server that simulates S3 commands so you can test your S3 functionality in your projects}
  s.description = %q{Use FakeS3 Rack to test basic S3 functionality without actually connecting to S3}

  s.rubyforge_project = "fakes3"

  s.add_development_dependency "bundler", ">= 1.0.0"
  s.add_development_dependency "aws-s3"
  s.add_development_dependency "right_aws"
  s.add_development_dependency "rake"
  s.add_development_dependency "rest-client"

  s.add_dependency "thor"
  s.add_dependency "builder"
  s.add_dependency "rack"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
