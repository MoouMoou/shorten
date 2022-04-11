require "test_helper"

class SharedUrlTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'should not save shared url without original_url' do
    shared_url = SharedUrl.new
    assert_not shared_url.save, "Saved the shared url without a original_url"
  end

  test 'the key is generated' do
    url = SharedUrl.create(original_url: 'http://www.google.com')
    assert_not_nil url.key
  end
end
