# coding: utf-8

Gem::Specification.new do |spec|
  spec.name        = 'bunpack'
  spec.version     = '1.0.1'
  spec.licenses    = ['MIT']
  spec.authors     = ["Pepijn Looije"]
  spec.email       = ["pepijn@blendle.nl"]
  spec.homepage    = "http://blendle.nl"
  spec.summary     = %q{Removes __MACOSX folder from zip archives}
  spec.description = %q{Removes __MACOSX folder from zip archives}

  spec.add_development_dependency 'rake', '>= 10.0.0'
  spec.add_development_dependency 'aruba', '>= 0.5.0'

  spec.files       = `git ls-files -z`.split("\x0")
  spec.test_files  = spec.files.grep(%r{^features/})

  spec.executables   = %w(bunpack)
end
