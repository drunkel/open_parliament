module OpenParliament
  class Vote < OpenStruct

    def self.resource_url
      "/votes/"
    end

    def self.valid_filters
      []
    end

  end
end
