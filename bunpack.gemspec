# coding: utf-8

Gem::Specification.new do |spec|
  spec.name        = 'bunpack'
  spec.version     = '1.0.3'
  spec.licenses    = ['MIT']
  spec.authors     = ['Pepijn Looije', 'Erik Terpstra']
  spec.email       = ['pepijn@blendle.com', 'Erik Terpstra']
  spec.homepage    = 'http://blendle.com'
  spec.summary     = %q{Removes __MACOSX folder from zip archives}
  spec.description = %q{Removes __MACOSX folder from zip archives}

  spec.add_development_dependency 'rake', '>= 10.0.0'
  spec.add_development_dependency 'aruba', '>= 0.5.0'
  spec.add_development_dependency 'pry'

  spec.files       = `git ls-files -z`.split("\x0")
  spec.test_files  = spec.files.grep(%r{^features/})

  spec.executables   = %w(bunpack)
end
