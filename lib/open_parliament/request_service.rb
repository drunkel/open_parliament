module OpenParliament
  module RequestService

    def self.make_request(url:, method:, params: {})
      full_url = "#{OpenParliament::API_URL}#{url}"

      resp = RestClient::Request.execute(method: method, 
                                         url: full_url,
                                         timeout: 10,
                                         headers: { accept: :json }
                                         )
      JSON.parse(resp)
    end

  end
end
