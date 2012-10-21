$:.push File.expand_path('../lib', __FILE__)

require 'carrierwave/orm/elastictastic/version'

Gem::Specification.new do |gem|
  gem.name = 'carrierwave-elastictastic'
  gem.version = CarrierWave::Elastictastic::VERSION
  gem.summary = 'Elastictastic support for CarrierWave'
  gem.description = gem.summary
  gem.homepage = 'https://github.com/kostia/carrierwave-elastictastic'
  gem.authors = ['Kostiantyn Kahanskyi']
  gem.email = %w[kostiantyn.kahanskyi@googlemail.com]
  gem.require_paths = %w[lib]
  gem.files = `git ls-files`.split "\n"
  gem.add_dependency 'carrierwave'
  gem.add_dependency 'elastictastic'
  gem.add_development_dependency 'rake'
end
