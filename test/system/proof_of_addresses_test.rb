require "application_system_test_case"

class ProofOfAddressesTest < ApplicationSystemTestCase
  setup do
    @proof_of_address = proof_of_addresses(:one)
  end

  test "visiting the index" do
    visit proof_of_addresses_url
    assert_selector "h1", text: "Proof of addresses"
  end

  test "should create proof of address" do
    visit proof_of_addresses_url
    click_on "New proof of address"

    fill_in "Document", with: @proof_of_address.document
    fill_in "Status", with: @proof_of_address.status
    fill_in "User", with: @proof_of_address.user_id
    click_on "Create Proof of address"

    assert_text "Proof of address was successfully created"
    click_on "Back"
  end

  test "should update Proof of address" do
    visit proof_of_address_url(@proof_of_address)
    click_on "Edit this proof of address", match: :first

    fill_in "Document", with: @proof_of_address.document
    fill_in "Status", with: @proof_of_address.status
    fill_in "User", with: @proof_of_address.user_id
    click_on "Update Proof of address"

    assert_text "Proof of address was successfully updated"
    click_on "Back"
  end

  test "should destroy Proof of address" do
    visit proof_of_address_url(@proof_of_address)
    click_on "Destroy this proof of address", match: :first

    assert_text "Proof of address was successfully destroyed"
  end
end
