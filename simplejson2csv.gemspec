
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simplejson2csv/version'

Gem::Specification.new do |spec|
  spec.name          = 'simplejson2csv'
  spec.version       = Simplejson2csv::VERSION
  spec.authors       = ['Walter Bindilatti Junior']
  spec.email         = ['walbinjr@gmail.com']

  spec.summary       = %q{A command-line tool to EASILY convert JSON to CSV.}
  spec.description   = %q{Use a given JSON and fields names to generate a CSV.}
  spec.homepage      = 'https://github.com/walbinjr/simplejson2csv'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'aruba'
  spec.add_development_dependency 'pry-meta'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'factory_bot'
  spec.add_development_dependency 'pronto'
  spec.add_development_dependency 'pronto-rubocop'
  spec.add_development_dependency 'pronto-flay'
  spec.add_development_dependency 'pronto-reek'

  spec.add_dependency 'thor', '~> 0.20.0'
end
