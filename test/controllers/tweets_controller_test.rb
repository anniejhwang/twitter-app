require "test_helper"

class TweetsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/tweets.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Tweet.count, data.length
  end
end
