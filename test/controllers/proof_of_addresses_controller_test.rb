require "test_helper"

class ProofOfAddressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @proof_of_address = proof_of_addresses(:one)
  end

  test "should get index" do
    get proof_of_addresses_url
    assert_response :success
  end

  test "should get new" do
    get new_proof_of_address_url
    assert_response :success
  end

  test "should create proof_of_address" do
    assert_difference("ProofOfAddress.count") do
      post proof_of_addresses_url, params: { proof_of_address: { document: @proof_of_address.document, status: @proof_of_address.status, user_id: @proof_of_address.user_id } }
    end

    assert_redirected_to proof_of_address_url(ProofOfAddress.last)
  end

  test "should show proof_of_address" do
    get proof_of_address_url(@proof_of_address)
    assert_response :success
  end

  test "should get edit" do
    get edit_proof_of_address_url(@proof_of_address)
    assert_response :success
  end

  test "should update proof_of_address" do
    patch proof_of_address_url(@proof_of_address), params: { proof_of_address: { document: @proof_of_address.document, status: @proof_of_address.status, user_id: @proof_of_address.user_id } }
    assert_redirected_to proof_of_address_url(@proof_of_address)
  end

  test "should destroy proof_of_address" do
    assert_difference("ProofOfAddress.count", -1) do
      delete proof_of_address_url(@proof_of_address)
    end

    assert_redirected_to proof_of_addresses_url
  end
end
