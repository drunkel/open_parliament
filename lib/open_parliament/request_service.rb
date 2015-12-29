module OpenParliament
  module RequestService

    VALID_PARAMS = [:limit, :offset]

    def self.make_request(url:, method:, params: {})
      full_url = "#{OpenParliament::API_URL}#{url}"

      resp = RestClient::Request.execute(method: method, 
                                         url: full_url,
                                         timeout: 10,
                                         headers: { accept: :json, params: build_params(params) }
                                         )
      JSON.parse(resp)
    end

    def self.build_params(params)
      allowed_params = params.select { |k| VALID_PARAMS.include?(k) }
      default_params.merge(allowed_params)
    end

    def self.default_params
      {
        limit: 20,
        offset: 0,
      }
    end
  end
end
