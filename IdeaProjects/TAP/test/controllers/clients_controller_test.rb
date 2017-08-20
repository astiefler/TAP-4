require 'test_helper'

class ClientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    get clients_url
    assert_response :success
  end

  test "should get new" do
    get new_client_url
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post clients_url, params: { client: { age: @client.age, age_range_id: @client.age_range_id, blood_type_id: @client.blood_type_id, country_id: @client.country_id, first_name: @client.first_name, gender_id: @client.gender_id, height: @client.height, last_name: @client.last_name, occupation: @client.occupation, premium: @client.premium, state_id: @client.state_id, weight: @client.weight, zodiac_id: @client.zodiac_id } }
    end

    assert_redirected_to client_url(Client.last)
  end

  test "should show client" do
    get client_url(@client)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_url(@client)
    assert_response :success
  end

  test "should update client" do
    patch client_url(@client), params: { client: { age: @client.age, age_range_id: @client.age_range_id, blood_type_id: @client.blood_type_id, country_id: @client.country_id, first_name: @client.first_name, gender_id: @client.gender_id, height: @client.height, last_name: @client.last_name, occupation: @client.occupation, premium: @client.premium, state_id: @client.state_id, weight: @client.weight, zodiac_id: @client.zodiac_id } }
    assert_redirected_to client_url(@client)
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete client_url(@client)
    end

    assert_redirected_to clients_url
  end
end
