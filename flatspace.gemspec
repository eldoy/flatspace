Gem::Specification.new do |s|
  s.name        = 'flatspace'
  s.version     = '0.0.2'
  s.date        = '2017-01-05'
  s.summary     = "Ruby helpers for making flatspace apps"
  s.description = "These helpers make it easy to make apps with Sinatra or other Rack based frameworks"
  s.authors     = ["Fugroup Limited"]
  s.email       = 'mail@fugroup.net'

  s.add_runtime_dependency 'sinatra', '~> 1.4'
  s.add_development_dependency 'futest', '~> 0'

  s.homepage    = 'https://github.com/fugroup/flatspace'
  s.license     = 'MIT'

  s.require_paths = ['lib']
  s.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
end
