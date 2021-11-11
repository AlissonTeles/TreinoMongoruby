require "test_helper"

class TesteMongosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teste_mongo = teste_mongos(:one)
  end

  test "should get index" do
    get teste_mongos_url
    assert_response :success
  end

  test "should get new" do
    get new_teste_mongo_url
    assert_response :success
  end

  test "should create teste_mongo" do
    assert_difference('TesteMongo.count') do
      post teste_mongos_url, params: { teste_mongo: { Email: @teste_mongo.Email, User: @teste_mongo.User } }
    end

    assert_redirected_to teste_mongo_url(TesteMongo.last)
  end

  test "should show teste_mongo" do
    get teste_mongo_url(@teste_mongo)
    assert_response :success
  end

  test "should get edit" do
    get edit_teste_mongo_url(@teste_mongo)
    assert_response :success
  end

  test "should update teste_mongo" do
    patch teste_mongo_url(@teste_mongo), params: { teste_mongo: { Email: @teste_mongo.Email, User: @teste_mongo.User } }
    assert_redirected_to teste_mongo_url(@teste_mongo)
  end

  test "should destroy teste_mongo" do
    assert_difference('TesteMongo.count', -1) do
      delete teste_mongo_url(@teste_mongo)
    end

    assert_redirected_to teste_mongos_url
  end
end
