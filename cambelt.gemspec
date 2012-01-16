# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "cambelt/version"

Gem::Specification.new do |s|
  s.name        = "cambelt"
  s.version     = Cambelt::VERSION
  s.authors     = ["John Maxwell"]
  s.email       = ["jgwmaxwell@gmail.com"]
  s.homepage    = "http://cambelt.co"
  s.summary     = %q{Cambelt is a simple yet beautiful image placeholder service.}
  s.description = %q{This gem makes it simple to embed images within your code with a nice Ruby DSL.}

  s.rubyforge_project = "cambelt"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_dependency "actionpack"
end
