Gem::Specification.new do |s|
  s.name        = 'flatspace'
  s.version     = '0.0.1'
  s.date        = '2016-12-26'
  s.summary     = "Ruby helpers for making flat space apps"
  s.description = "These helpers make it easy to make apps with Sinatra or other Rack based frameworks"
  s.authors     = ["Fugroup Limited"]
  s.email       = 'mail@fugroup.net'
  s.files       = ["lib/flatspace.rb"]
  s.add_runtime_dependency 'sinatra', '~> 1.4'
  s.add_development_dependency 'futest', '~> 0'
  s.homepage    = 'https://github.com/fugroup/flatspace'
  s.license     = 'MIT'
end
