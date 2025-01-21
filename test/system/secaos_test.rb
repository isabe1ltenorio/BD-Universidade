require "application_system_test_case"

class SecaosTest < ApplicationSystemTestCase
  setup do
    @secao = secaos(:one)
  end

  test "visiting the index" do
    visit secaos_url
    assert_selector "h1", text: "Secaos"
  end

  test "should create secao" do
    visit secaos_url
    click_on "New secao"

    fill_in "Ano", with: @secao.ano
    fill_in "Curso", with: @secao.curso_id
    fill_in "Num sala", with: @secao.num_sala
    fill_in "Periodo", with: @secao.periodo_id
    click_on "Create Secao"

    assert_text "Secao was successfully created"
    click_on "Back"
  end

  test "should update Secao" do
    visit secao_url(@secao)
    click_on "Edit this secao", match: :first

    fill_in "Ano", with: @secao.ano
    fill_in "Curso", with: @secao.curso_id
    fill_in "Num sala", with: @secao.num_sala
    fill_in "Periodo", with: @secao.periodo_id
    click_on "Update Secao"

    assert_text "Secao was successfully updated"
    click_on "Back"
  end

  test "should destroy Secao" do
    visit secao_url(@secao)
    click_on "Destroy this secao", match: :first

    assert_text "Secao was successfully destroyed"
  end
end
