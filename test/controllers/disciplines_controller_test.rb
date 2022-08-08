require "test_helper"

class DisciplinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @discipline = disciplines(:one)
  end

  test "should get index" do
    get disciplines_url, as: :json
    assert_response :success
  end

  test "should create discipline" do
    assert_difference("Discipline.count") do
      post disciplines_url, params: { discipline: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show discipline" do
    get discipline_url(@discipline), as: :json
    assert_response :success
  end

  test "should update discipline" do
    patch discipline_url(@discipline), params: { discipline: {  } }, as: :json
    assert_response :success
  end

  test "should destroy discipline" do
    assert_difference("Discipline.count", -1) do
      delete discipline_url(@discipline), as: :json
    end

    assert_response :no_content
  end
end
