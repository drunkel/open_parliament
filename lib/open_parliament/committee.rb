module OpenParliament
  class Committee < OpenStruct

    def self.resource_url
      "/committees/"
    end

    def self.valid_filters
      []
    end
  end
end
