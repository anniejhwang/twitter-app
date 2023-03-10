require "test_helper"

class TweetsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/tweets.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Tweet.count, data.length
  end

  test "create" do
    assert_difference "Tweet.count", 1 do
      post "/tweets.json", params: { text: "test", user_id: "1" }
      assert_response 200
    end
  end

  test "show" do
    get "/tweets/#{Tweet.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "text", "user_id", "created_at", "updated_at"], data.keys
  end
end
