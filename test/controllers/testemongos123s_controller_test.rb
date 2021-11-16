require "test_helper"

class Testemongos123sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @testemongos123 = testemongos123s(:one)
  end

  test "should get index" do
    get testemongos123s_url
    assert_response :success
  end

  test "should get new" do
    get new_testemongos123_url
    assert_response :success
  end

  test "should create testemongos123" do
    assert_difference('Testemongos123.count') do
      post testemongos123s_url, params: { testemongos123: { email: @testemongos123.email, password: @testemongos123.password, user: @testemongos123.user } }
    end

    assert_redirected_to testemongos123_url(Testemongos123.last)
  end

  test "should show testemongos123" do
    get testemongos123_url(@testemongos123)
    assert_response :success
  end

  test "should get edit" do
    get edit_testemongos123_url(@testemongos123)
    assert_response :success
  end

  test "should update testemongos123" do
    patch testemongos123_url(@testemongos123), params: { testemongos123: { email: @testemongos123.email, password: @testemongos123.password, user: @testemongos123.user } }
    assert_redirected_to testemongos123_url(@testemongos123)
  end

  test "should destroy testemongos123" do
    assert_difference('Testemongos123.count', -1) do
      delete testemongos123_url(@testemongos123)
    end

    assert_redirected_to testemongos123s_url
  end
end
