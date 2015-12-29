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

  def self.bills(params = {})
    url = "/bills/"
    json = RequestService.make_request(url: url, method: :get, params: params)
    bills = json["objects"]
    bills.map { |bill_json| Bill.new(bill_json) }
  end

  def self.committees(params = {})
    url = "/committees/"
    json = RequestService.make_request(url: url, method: :get, params: params)
    committees = json["objects"]
    committees.map { |committee_json| Committee.new(committee_json) }
  end

  def self.debates(params = {})
    url = "/debates/"
    json = RequestService.make_request(url: url, method: :get, params: params)
    debates = json["objects"]
    debates.map { |debate_json| Debate.new(debate_json) }
  end

  def self.votes(params = {})
    url = "/votes/"
    json = RequestService.make_request(url: url, method: :get, params: params)
    votes = json["objects"]
    votes.map { |vote_json| Vote.new(vote_json) }
  end

  def self.politicians(params = {})
    url = "/politicians/"
    json = RequestService.make_request(url: url, method: :get, params: params)
    politicians = json["objects"]
    politicians.map { |politician_json| Politician.new(politician_json) }
  end
end
