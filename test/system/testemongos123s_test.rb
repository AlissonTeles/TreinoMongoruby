require "application_system_test_case"

class Testemongos123sTest < ApplicationSystemTestCase
  setup do
    @testemongos123 = testemongos123s(:one)
  end

  test "visiting the index" do
    visit testemongos123s_url
    assert_selector "h1", text: "Testemongos123s"
  end

  test "creating a Testemongos123" do
    visit testemongos123s_url
    click_on "New Testemongos123"

    fill_in "Email", with: @testemongos123.email
    fill_in "Password", with: @testemongos123.password
    fill_in "User", with: @testemongos123.user
    click_on "Create Testemongos123"

    assert_text "Testemongos123 was successfully created"
    click_on "Back"
  end

  test "updating a Testemongos123" do
    visit testemongos123s_url
    click_on "Edit", match: :first

    fill_in "Email", with: @testemongos123.email
    fill_in "Password", with: @testemongos123.password
    fill_in "User", with: @testemongos123.user
    click_on "Update Testemongos123"

    assert_text "Testemongos123 was successfully updated"
    click_on "Back"
  end

  test "destroying a Testemongos123" do
    visit testemongos123s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Testemongos123 was successfully destroyed"
  end
end
