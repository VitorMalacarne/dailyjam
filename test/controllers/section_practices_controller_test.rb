require "test_helper"

class SectionPracticesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get section_practices_new_url
    assert_response :success
  end

  test "should get create" do
    get section_practices_create_url
    assert_response :success
  end

  test "should get edit" do
    get section_practices_edit_url
    assert_response :success
  end

  test "should get update" do
    get section_practices_update_url
    assert_response :success
  end

  test "should get destroy" do
    get section_practices_destroy_url
    assert_response :success
  end
end
