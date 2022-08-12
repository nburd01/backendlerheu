require "test_helper"

class OpponentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @opponent = opponents(:one)
  end

  test "should get index" do
    get opponents_url, as: :json
    assert_response :success
  end

  test "should create opponent" do
    assert_difference("Opponent.count") do
      post opponents_url, params: { opponent: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show opponent" do
    get opponent_url(@opponent), as: :json
    assert_response :success
  end

  test "should update opponent" do
    patch opponent_url(@opponent), params: { opponent: {  } }, as: :json
    assert_response :success
  end

  test "should destroy opponent" do
    assert_difference("Opponent.count", -1) do
      delete opponent_url(@opponent), as: :json
    end

    assert_response :no_content
  end
end
