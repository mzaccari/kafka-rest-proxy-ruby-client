require "uri"

module KafkaProxyRestClient
  class ProducerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    #
    # Produce messages to a topic, optionally specifying keys or partitions for the messages. If no partition is provided, one will be chosen based on the hash of the key. If no key is provided, the partition will be chosen for each message in a round-robin fashion.  #  For the ``avro`` embedded format, you must provide information about schemas and the REST proxy must be configured with the URL to access the schema registry (``schema.registry.connect``). Schemas may be provided as the full schema encoded as a string, or, after the initial request may be provided as the schema ID returned with the first response.
    # @param topic_name Name of the topic to produce the messages to
    # @param body Data to send to the kafka topic.
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse200]
    def topics_topic_name_post(topic_name, body, opts = {})
      data, _status_code, _headers = topics_topic_name_post_with_http_info(topic_name, body, opts)
      return data
    end
    alias_method :publish, :topics_topic_name_post

    #
    # Produce messages to a topic, optionally specifying keys or partitions for the messages. If no partition is provided, one will be chosen based on the hash of the key. If no key is provided, the partition will be chosen for each message in a round-robin fashion.  #  For the &#x60;&#x60;avro&#x60;&#x60; embedded format, you must provide information about schemas and the REST proxy must be configured with the URL to access the schema registry (&#x60;&#x60;schema.registry.connect&#x60;&#x60;). Schemas may be provided as the full schema encoded as a string, or, after the initial request may be provided as the schema ID returned with the first response.
    # @param topic_name Name of the topic to produce the messages to
    # @param body Data to send to the kafka topic.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse200, Fixnum, Hash)>] InlineResponse200 data, response status code and response headers
    def topics_topic_name_post_with_http_info(topic_name, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProducerApi.topics_topic_name_post ..."
      end
      # verify the required parameter 'topic_name' is set
      fail ArgumentError, "Missing the required parameter 'topic_name' when calling ProducerApi.topics_topic_name_post" if topic_name.nil?
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling ProducerApi.topics_topic_name_post" if body.nil?
      # resource path
      local_var_path = "/topics/{topic_name}".sub('{format}','json').sub('{' + 'topic_name' + '}', topic_name.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.kafka.v2+json', 'application/vnd.kafka+json', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/vnd.kafka.v2+json', 'application/vnd.kafka+json', 'application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse200')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProducerApi#topics_topic_name_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
