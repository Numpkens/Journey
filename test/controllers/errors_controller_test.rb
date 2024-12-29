require "test_helper"

class ErrorsControllerTest < ActionDispatch::IntegrationTest
  test "should get not_found" do
    get errors_not_found_url
    assert_response :success
  end

  test "should get internal_server_error" do
    get errors_internal_server_error_url
    assert_response :success
  end

  test "should get unprocessable_entity" do
    get errors_unprocessable_entity_url
    assert_response :success
  end

  test "should get forbidden" do
    get errors_forbidden_url
    assert_response :success
  end

  test "should get unauthorized" do
    get errors_unauthorized_url
    assert_response :success
  end

  test "should get bad_request" do
    get errors_bad_request_url
    assert_response :success
  end

  test "should get service_unavailable" do
    get errors_service_unavailable_url
    assert_response :success
  end

  test "should get gateway_timeout" do
    get errors_gateway_timeout_url
    assert_response :success
  end

  test "should get http_version_not_supported" do
    get errors_http_version_not_supported_url
    assert_response :success
  end

  test "should get insufficient_storage" do
    get errors_insufficient_storage_url
    assert_response :success
  end

  test "should get loop_detected" do
    get errors_loop_detected_url
    assert_response :success
  end

  test "should get bandwidth_limit_exceeded" do
    get errors_bandwidth_limit_exceeded_url
    assert_response :success
  end

  test "should get not_extended" do
    get errors_not_extended_url
    assert_response :success
  end

  test "should get network_authentication_required" do
    get errors_network_authentication_required_url
    assert_response :success
  end
end
