require "application_system_test_case"

class UniversidadesTest < ApplicationSystemTestCase
  setup do
    @universidade = universidades(:one)
  end

  test "visiting the index" do
    visit universidades_url
    assert_selector "h1", text: "Universidades"
  end

  test "should create universidade" do
    visit universidades_url
    click_on "New universidade"

    fill_in "Nome universidade", with: @universidade.nome_universidade
    click_on "Create Universidade"

    assert_text "Universidade was successfully created"
    click_on "Back"
  end

  test "should update Universidade" do
    visit universidade_url(@universidade)
    click_on "Edit this universidade", match: :first

    fill_in "Nome universidade", with: @universidade.nome_universidade
    click_on "Update Universidade"

    assert_text "Universidade was successfully updated"
    click_on "Back"
  end

  test "should destroy Universidade" do
    visit universidade_url(@universidade)
    click_on "Destroy this universidade", match: :first

    assert_text "Universidade was successfully destroyed"
  end
end
