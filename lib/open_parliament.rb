require 'rest-client'
require 'json'
require 'open-uri'
require 'ostruct'

require 'open_parliament/bill'
require 'open_parliament/committee'
require 'open_parliament/debate'
require 'open_parliament/politician'
require 'open_parliament/vote'
require 'open_parliament/request_service'

module OpenParliament
  API_URL = 'http://api.openparliament.ca'

  def self.bills
    url = "/bills/"
    json = RequestService.make_request(url: url, method: :get)
    bills = json["objects"]
    bills.map { |bill_json| Bill.new(bill_json) }
  end

  def self.committees
    url = "/committees/"
    json = RequestService.make_request(url: url, method: :get)
    committees = json["objects"]
    committees.map { |committee_json| Committee.new(committee_json) }
  end

  def self.debates
    url = "/debates/"
    json = RequestService.make_request(url: url, method: :get)
    debates = json["objects"]
    debates.map { |debate_json| Debate.new(debate_json) }
  end

  def self.votes
    url = "/votes/"
    json = RequestService.make_request(url: url, method: :get)
    votes = json["objects"]
    votes.map { |vote_json| Vote.new(vote_json) }
  end

  def self.politicians
    url = "/politicians/"
    json = RequestService.make_request(url: url, method: :get)
    politicians = json["objects"]
    politicians.map { |politician_json| Politician.new(politician_json) }
  end
end
