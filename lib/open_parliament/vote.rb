module OpenParliament
  class Vote < OpenStruct

    def self.resource_url
      "/votes/"
    end

    def self.valid_filters
      [
        :bill,
        :date,
        :nay_total,
        :number,
        :paired_total,
        :result,
        :session,
        :yea_total,
      ]
    end

  end
end
