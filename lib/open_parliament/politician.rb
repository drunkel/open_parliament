module OpenParliament
  class Politician < OpenStruct

    def self.resource_url
      "/politicians/"
    end

    def self.valid_filters
      []
    end

  end
end
