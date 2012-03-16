# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "middleman-backbone/version"

Gem::Specification.new do |s|
  s.name        = "middleman-backbone"
  s.version     = Middleman::Blog::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Thomas Reynolds"]
  s.email       = ["me@tdreyno.com"]
  s.homepage    = "https://github.com/middleman/middleman-backbone"
  s.summary     = %q{Backbone Boilerplate packaged for Middleman}
  s.description = %q{Backbone Boilerplate packaged for Middleman}

  s.rubyforge_project = "middleman-backbone"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_runtime_dependency("middleman-core", [">= 3.0.0.beta.2"])
end
