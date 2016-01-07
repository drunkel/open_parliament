module OpenParliament
  class RequestService

    VALID_PARAMS = [:limit, :offset]

    def initialize(klass)
      @klass = klass
    end

    def get(params = {})
      json = make_request(url: @klass.resource_url, method: :get, params: params)
      objects = json["objects"]
      objects.map { |object_json| @klass.new(object_json) }
    end


    private

    def make_request(url:, method:, params: {})
      @params = params

      full_url = "#{OpenParliament::API_URL}#{url}"
      resp = RestClient::Request.execute(method: method, 
                                         url: full_url,
                                         timeout: 10,
                                         headers: build_headers,
                                         )
      JSON.parse(resp)
    end

    def build_headers
      {
        "API-Version" => "v1",
        accept: :json,
        params: build_params,
      }
    end

    def build_params
      filtered_params = @params.select { |k| (VALID_PARAMS + @klass.valid_filters).include?(k) }
      default_params.merge(filtered_params)
    end

    def default_params
      {
        limit: 20,
        offset: 0,
      }
    end
  end
end
