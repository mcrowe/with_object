# -*- encoding: utf-8 -*-
require File.expand_path('../lib/with_object/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Mitch Crowe"]
  gem.email         = ["crowe.mitch@gmail.com"]
  gem.description   = %q{Syntax sugar for calling a sequence of methods on a Ruby object}
  gem.summary       = %q{Syntax sugar for calling a sequence of methods on a Ruby object}
  gem.homepage      = "https://github.com/mcrowe/with_object"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(spec)/})
  gem.name          = "with_object"
  gem.require_paths = ["lib"]
  gem.version       = WithObject::VERSION

  gem.add_development_dependency 'rake', '~> 0.9'
  gem.add_development_dependency 'rspec', '~> 2.8'
end
