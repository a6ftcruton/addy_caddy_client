require 'minitest/autorun'
require 'minitest/pride'
require './lib/tweeter_client/client'

class ClientTest < Minitest::Test
  
  def test_it_exists
    assert TweeterClient::Client
  end

  def test_it_finds_a_poster
    client = TweeterClient::Client.new('http://localhost:3000')
    poster = client.find_poster(1)
    assert_equal "raleigh_reilly", poster.name
  end

  def test_it_returns_data_from_get_request
    client = TweeterClient::Client.new('http://localhost:3000')
    tweet = client.find_tweet(1)
    assert_equal "Officia pariatur distinctio error omnis sapiente ut ullam.", tweet.content
  end

end
