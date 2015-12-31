module OpenParliament
  class Politician < OpenStruct

    def self.resource_url
      "/politicians/"
    end

    def self.valid_filters
      [
        :family_name,
        :given_name,
        :include,
        :name,
      ]
    end

  end
end
