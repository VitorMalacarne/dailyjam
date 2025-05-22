require "test_helper"

class PracticeSessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get practice_sessions_index_url
    assert_response :success
  end

  test "should get show" do
    get practice_sessions_show_url
    assert_response :success
  end

  test "should get new" do
    get practice_sessions_new_url
    assert_response :success
  end

  test "should get create" do
    get practice_sessions_create_url
    assert_response :success
  end

  test "should get edit" do
    get practice_sessions_edit_url
    assert_response :success
  end

  test "should get update" do
    get practice_sessions_update_url
    assert_response :success
  end

  test "should get destroy" do
    get practice_sessions_destroy_url
    assert_response :success
  end
end
