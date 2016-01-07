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
    bills_service = RequestService.new(Bill)
    bills_service.get(params)
  end

  def self.committees(params = {})
    committees_service = RequestService.new(Committee)
    committees_service.get(params)
  end

  def self.debates(params = {})
    debates_service = RequestService.new(Debate)
    debates_service.get(params)
  end

  def self.votes(params = {})
    votes_service = RequestService.new(Vote)
    votes_service.get(params)
  end

  def self.politicians(params = {})
    politicians_service = RequestService.new(Politician)
    politicians_service.get(params)
  end
end
