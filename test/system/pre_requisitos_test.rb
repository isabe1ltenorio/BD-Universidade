require "application_system_test_case"

class PreRequisitosTest < ApplicationSystemTestCase
  setup do
    @pre_requisito = pre_requisitos(:one)
  end

  test "visiting the index" do
    visit pre_requisitos_url
    assert_selector "h1", text: "Pre requisitos"
  end

  test "should create pre requisito" do
    visit pre_requisitos_url
    click_on "New pre requisito"

    click_on "Create Pre requisito"

    assert_text "Pre requisito was successfully created"
    click_on "Back"
  end

  test "should update Pre requisito" do
    visit pre_requisito_url(@pre_requisito)
    click_on "Edit this pre requisito", match: :first

    click_on "Update Pre requisito"

    assert_text "Pre requisito was successfully updated"
    click_on "Back"
  end

  test "should destroy Pre requisito" do
    visit pre_requisito_url(@pre_requisito)
    click_on "Destroy this pre requisito", match: :first

    assert_text "Pre requisito was successfully destroyed"
  end
end
