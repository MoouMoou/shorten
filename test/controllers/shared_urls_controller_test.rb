require "test_helper"

class SharedUrlsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get shared_url_url(id: shared_urls(:google).key)
    assert_redirected_to shared_urls(:google).original_url
  end

  test "should get show with short url" do
    get "/#{shared_urls(:google).key}"
    assert_redirected_to shared_urls(:google).original_url
  end
end
