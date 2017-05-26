# KafkaProxyRestClient::ProducerApi

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**topics_topic_name_post**](ProducerApi.md#topics_topic_name_post) | **POST** /topics/{topic_name} | 


# **topics_topic_name_post**
> InlineResponse200 topics_topic_name_post(topic_name, body)



Produce messages to a topic, optionally specifying keys or partitions for the messages. If no partition is provided, one will be chosen based on the hash of the key. If no key is provided, the partition will be chosen for each message in a round-robin fashion.  #  For the ``avro`` embedded format, you must provide information about schemas and the REST proxy must be configured with the URL to access the schema registry (``schema.registry.connect``). Schemas may be provided as the full schema encoded as a string, or, after the initial request may be provided as the schema ID returned with the first response. 

### Example
```ruby
# load the gem
require 'kafka_rest_proxy_client'

api_instance = KafkaProxyRestClient::ProducerApi.new

topic_name = "topic_name_example" # String | Name of the topic to produce the messages to

body = KafkaProxyRestClient::Body.new # Body | Data to send to the kafka topic.


begin
  result = api_instance.topics_topic_name_post(topic_name, body)
  p result
rescue KafkaProxyRestClient::ApiError => e
  puts "Exception when calling ProducerApi->topics_topic_name_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **topic_name** | **String**| Name of the topic to produce the messages to | 
 **body** | [**Body**](Body.md)| Data to send to the kafka topic. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/vnd.kafka.v2+json, application/vnd.kafka+json, application/json
 - **Accept**: application/vnd.kafka.v2+json, application/vnd.kafka+json, application/json



