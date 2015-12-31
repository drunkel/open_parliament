module OpenParliament
  class Bill < OpenStruct

    def self.resource_url
      "/bills/"
    end

    def self.valid_filters
      [:introduced] # TODO
    end

  end
end
