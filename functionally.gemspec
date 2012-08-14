# -*- encoding: utf-8 -*-
require File.expand_path('../lib/functionally/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Tomohito Ozaki"]
  gem.email         = ["ozaki@yuroyoro.com"]
  gem.description   = %q{make your code more functioal!!!}
  gem.summary       = %q{make your code more functioal!!!}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "functionally"
  gem.require_paths = ["lib"]
  gem.version       = Functionally::VERSION

  # dependencies
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'ruby-debug19'
  gem.add_development_dependency 'pry'
end
