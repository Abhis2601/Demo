require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "should get form" do
    get articles_form_url
    assert_response :success
  end
end
