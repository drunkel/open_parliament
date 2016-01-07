module OpenParliament
  class Committee < OpenStruct

    def self.resource_url
      "/committees/"
    end

    def self.valid_filters
      [:session]
    end
  end
end
