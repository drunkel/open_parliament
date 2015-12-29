Gem::Specification.new do |s|
  s.name        = 'open_parliament'
  s.version     = '0.0.1'
  s.date        = '2016-01-01'
  s.summary     = "Open Parliament"
  s.description = "Simple gem for interfacing with openparliament.ca's API"
  s.authors     = ["Dylan Runkel"]
  s.email       = 'dylan.runkel@gmail.com'
  s.homepage    =
    'https://github.com/drunkel/open_parliament'
  s.license       = 'MIT'
  s.require_paths = ["lib"]
  s.files = [
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.md",
    "README.md",
    "Rakefile",
    "lib/open_parliament.rb",
    "lib/open_parliament/bill.rb",
    "lib/open_parliament/committee.rb",
    "lib/open_parliament/debate.rb",
    "lib/open_parliament/politician.rb",
    "lib/open_parliament/request_service.rb",
    "lib/open_parliament/vote.rb",
  ]
end
