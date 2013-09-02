# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dauft/version'

Gem::Specification.new do |gem|
  gem.name          = "dauft"
  gem.version       = Dauft::VERSION
  gem.authors       = ["michaelnera"]
  gem.email         = ["kapitan_03@yahoo.com"]
  gem.description   = ""
  gem.summary       = ""
  gem.homepage      = "https://github.com/michaelnera/dauft"
end
