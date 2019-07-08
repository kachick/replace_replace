# coding: us-ascii

Gem::Specification.new do |gem|
  # specific

  gem.name          = 'replace_replace'
  gem.description   = %q~Improve API around {Hash,Array}#replace~
  gem.summary       = gem.description.dup
  gem.license       = 'BSD 2-Clause'
  gem.version       = '0.0.2'

  gem.add_development_dependency 'test-unit', '>= 2.5.5', '< 2.6'
  gem.add_development_dependency 'yard', '>= 0.8.7.3', '< 0.9'
  gem.add_development_dependency 'rake', '>= 10', '< 20'
  gem.add_development_dependency 'bundler', '>= 1.3.5', '< 2'

  if RUBY_ENGINE == 'rbx'
    gem.add_dependency 'rubysl', '~> 2.0'
  end

  # common

  gem.homepage      = "http://kachick.github.com/#{gem.name}"
  gem.authors       = ['Kenichi Kamiya']
  gem.email         = ['kachick1+ruby@gmail.com']
  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']
end
