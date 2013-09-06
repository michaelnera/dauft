# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dauft/version'

Gem::Specification.new do |gem|
  gem.name          = "dauft"
  gem.version       = Dauft::VERSION
  gem.authors       = ["michaelnera"]
  gem.email         = ["kapitan_03@yahoo.com"]
  gem.description   = "Design Applications Using Foundation Templates"
  gem.summary       = "This gem uses Zurb Foundation stylesheets and html templates"
  gem.homepage      = "https://github.com/michaelnera/dauft"
  gem.files         = `git ls-files`.split($\)

  gem.add_dependency "zurb-foundation"
end
