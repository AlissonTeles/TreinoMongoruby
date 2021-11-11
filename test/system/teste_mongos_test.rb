require "application_system_test_case"

class TesteMongosTest < ApplicationSystemTestCase
  setup do
    @teste_mongo = teste_mongos(:one)
  end

  test "visiting the index" do
    visit teste_mongos_url
    assert_selector "h1", text: "Teste Mongos"
  end

  test "creating a Teste mongo" do
    visit teste_mongos_url
    click_on "New Teste Mongo"

    fill_in "Email", with: @teste_mongo.Email
    fill_in "User", with: @teste_mongo.User
    click_on "Create Teste mongo"

    assert_text "Teste mongo was successfully created"
    click_on "Back"
  end

  test "updating a Teste mongo" do
    visit teste_mongos_url
    click_on "Edit", match: :first

    fill_in "Email", with: @teste_mongo.Email
    fill_in "User", with: @teste_mongo.User
    click_on "Update Teste mongo"

    assert_text "Teste mongo was successfully updated"
    click_on "Back"
  end

  test "destroying a Teste mongo" do
    visit teste_mongos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Teste mongo was successfully destroyed"
  end
end
