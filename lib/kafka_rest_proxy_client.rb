# Common files
require 'kafka_rest_proxy_client/api_client'
require 'kafka_rest_proxy_client/api_error'
require 'kafka_rest_proxy_client/version'
require 'kafka_rest_proxy_client/configuration'

# Models
require 'kafka_rest_proxy_client/models/body'
require 'kafka_rest_proxy_client/models/inline_response_200'
require 'kafka_rest_proxy_client/models/inline_response_200_offsets'
require 'kafka_rest_proxy_client/models/offset'
require 'kafka_rest_proxy_client/models/producer_request'
require 'kafka_rest_proxy_client/models/producer_response'
require 'kafka_rest_proxy_client/models/record'
require 'kafka_rest_proxy_client/models/topicstopic_name_records'

# APIs
require 'kafka_rest_proxy_client/api/producer_api'

module KafkaProxyRestClient

  class << self
    # Customize default settings for the SDK using block.
    #   KafkaProxyRestClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
