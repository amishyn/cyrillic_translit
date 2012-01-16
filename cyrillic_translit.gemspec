# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "cyrillic_translit/version"

Gem::Specification.new do |s|
  s.name        = "cyrillic_translit"
  s.version     = CyrillicTranslit::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Alex Mishyn"]
  s.email       = ["mishyn@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Ukrainian/Russian translit}
  s.description = %q{Ukrainian/Russian translit}

  s.rubyforge_project = "cyrillic_translit"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_dependency('i18n',       '0.5.0')
  s.add_dependency('activesupport',       '> 2.0')
end
