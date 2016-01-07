module OpenParliament
  class Bill < OpenStruct

    def self.resource_url
      "/bills/"
    end

    def self.valid_filters
      [
        :introduced,
        :law,
        :legisinfo_id,
        :number,
        :private_member_bill,
        :session,
        :sponsor_politician,
        :sponsor_politician_membership,
        :status_code,
      ]
    end

  end
end
