module OpenParliament
  class Debate < OpenStruct

    def self.resource_url
      "/debates/"
    end

    def self.valid_filters
      []
    end

  end
end
