# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'html5forms-rails/version'

Gem::Specification.new do |gem|
  gem.name          = "html5forms-rails"
  gem.version       = Html5forms::Rails::VERSION
  gem.authors       = ["Kristian Mandrup"]
  gem.email         = ["kmandrup@gmail.com"]
  gem.description   = %q{Use the power of html5 forms even in old browsers using polyfills :)}
  gem.summary       = %q{HTML5forms packages for Rails asset pipeline}
  gem.homepage      = "http://github.com/kristianmandrup/jqtools-rails"
  gem.licenses      = ["MIT"]

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "railties", ">= 3.1"
end
