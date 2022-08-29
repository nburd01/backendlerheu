require "test_helper"

class TaggablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @taggable = taggables(:one)
  end

  test "should get index" do
    get taggables_url, as: :json
    assert_response :success
  end

  test "should create taggable" do
    assert_difference("Taggable.count") do
      post taggables_url, params: { taggable: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show taggable" do
    get taggable_url(@taggable), as: :json
    assert_response :success
  end

  test "should update taggable" do
    patch taggable_url(@taggable), params: { taggable: {  } }, as: :json
    assert_response :success
  end

  test "should destroy taggable" do
    assert_difference("Taggable.count", -1) do
      delete taggable_url(@taggable), as: :json
    end

    assert_response :no_content
  end
end
