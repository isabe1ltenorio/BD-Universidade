require "application_system_test_case"

class PrediosTest < ApplicationSystemTestCase
  setup do
    @predio = predios(:one)
  end

  test "visiting the index" do
    visit predios_url
    assert_selector "h1", text: "Predios"
  end

  test "should create predio" do
    visit predios_url
    click_on "New predio"

    fill_in "Nome predio", with: @predio.nome_predio
    click_on "Create Predio"

    assert_text "Predio was successfully created"
    click_on "Back"
  end

  test "should update Predio" do
    visit predio_url(@predio)
    click_on "Edit this predio", match: :first

    fill_in "Nome predio", with: @predio.nome_predio
    click_on "Update Predio"

    assert_text "Predio was successfully updated"
    click_on "Back"
  end

  test "should destroy Predio" do
    visit predio_url(@predio)
    click_on "Destroy this predio", match: :first

    assert_text "Predio was successfully destroyed"
  end
end
