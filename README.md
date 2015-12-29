# Open Parliament gem

A simple gem to interface with the api at https://openparliament.ca/api/

##Features
Currently supports basic GETs of 5 endpoints: Bills, Committees, Debates, Politicians, and Votes. These endpoints return lists of OpenParliament objects (which are currently just OpenStructs).

##Usage
```ruby
gem install open_parliament

require 'open_parliament'

# Get lists of Bills, Committees, Debates, Politicians, and Votes
OpenParliament.bills => [OpenParliament::Bill...]
OpenParliament.committees => [OpenParliament::Committee..]
OpenParliament.debates => [OpenParliament::Debate...]
OpenParliament.politicians => [OpenParliament::Politican...]
OpenParliament.votes => [OpenParliament::Vote...]

# Get properties from these objects as you would any OpenStruct
vote = OpenParliament.votes.first
vote.result => "Passed"
vote.description["en"] => "That the Bill be now read a third time and do pass."

# Pagination with limit/offset. Defaults to limit:20, offset:0
first_bill = OpenParliament.bills(limit: 1)
second_bill = OpenParliament.bills(limit: 1, offset: 1)
```
