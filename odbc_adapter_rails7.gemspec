# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'odbc_adapter_rails7/version'

Gem::Specification.new do |spec|
  spec.name          = 'odbc_adapter_rails7'
  spec.version       = ODBCAdapter::VERSION
  spec.authors       = ['Localytics and extended by Imperial Systems']
  spec.email         = ['admin@isystemsweb.com']

  spec.summary       = 'An ActiveRecord ODBC adapter extended to work with Rails 7'
  spec.homepage      = 'https://github.com/imperial-systems/odbc_adapter_rails7'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'activerecord'
  spec.add_dependency 'ruby-odbc'
  spec.required_ruby_version = '>= 3.0'

  spec.add_development_dependency 'bundler', '>= 1.14'
  spec.add_development_dependency 'minitest', '~> 5.10'
  spec.add_development_dependency 'pry', '~> 0.11.1'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rubocop', '1.48.1'
  spec.add_development_dependency 'rubocop-minitest', '0.29.0'
  spec.add_development_dependency 'rubocop-rake', '0.6.0'
  spec.add_development_dependency 'simplecov', '~> 0.14'
  spec.metadata['rubygems_mfa_required'] = 'true'
end
