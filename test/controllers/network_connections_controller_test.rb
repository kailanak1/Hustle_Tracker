require 'test_helper'

class NetworkConnectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @network_connection = network_connections(:one)
  end

  test "should get index" do
    get network_connections_url, as: :json
    assert_response :success
  end

  test "should create network_connection" do
    assert_difference('NetworkConnection.count') do
      post network_connections_url, params: { network_connection: { company: @network_connection.company, contact_type: @network_connection.contact_type, email: @network_connection.email, name: @network_connection.name, user_id: @network_connection.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show network_connection" do
    get network_connection_url(@network_connection), as: :json
    assert_response :success
  end

  test "should update network_connection" do
    patch network_connection_url(@network_connection), params: { network_connection: { company: @network_connection.company, contact_type: @network_connection.contact_type, email: @network_connection.email, name: @network_connection.name, user_id: @network_connection.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy network_connection" do
    assert_difference('NetworkConnection.count', -1) do
      delete network_connection_url(@network_connection), as: :json
    end

    assert_response 204
  end
end
