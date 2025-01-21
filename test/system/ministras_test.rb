require "application_system_test_case"

class MinistrasTest < ApplicationSystemTestCase
  setup do
    @ministra = ministras(:one)
  end

  test "visiting the index" do
    visit ministras_url
    assert_selector "h1", text: "Ministras"
  end

  test "should create ministra" do
    visit ministras_url
    click_on "New ministra"

    fill_in "Ano", with: @ministra.ano
    fill_in "Curso", with: @ministra.curso_id
    fill_in "Instrutor", with: @ministra.instrutor_id
    fill_in "Secao", with: @ministra.secao_id
    fill_in "Semestre", with: @ministra.semestre
    click_on "Create Ministra"

    assert_text "Ministra was successfully created"
    click_on "Back"
  end

  test "should update Ministra" do
    visit ministra_url(@ministra)
    click_on "Edit this ministra", match: :first

    fill_in "Ano", with: @ministra.ano
    fill_in "Curso", with: @ministra.curso_id
    fill_in "Instrutor", with: @ministra.instrutor_id
    fill_in "Secao", with: @ministra.secao_id
    fill_in "Semestre", with: @ministra.semestre
    click_on "Update Ministra"

    assert_text "Ministra was successfully updated"
    click_on "Back"
  end

  test "should destroy Ministra" do
    visit ministra_url(@ministra)
    click_on "Destroy this ministra", match: :first

    assert_text "Ministra was successfully destroyed"
  end
end
