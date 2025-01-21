require "application_system_test_case"

class PeriodosTest < ApplicationSystemTestCase
  setup do
    @periodo = periodos(:one)
  end

  test "visiting the index" do
    visit periodos_url
    assert_selector "h1", text: "Periodos"
  end

  test "should create periodo" do
    visit periodos_url
    click_on "New periodo"

    fill_in "Data", with: @periodo.data
    fill_in "Hora final", with: @periodo.hora_final
    fill_in "Hora inicial", with: @periodo.hora_inicial
    click_on "Create Periodo"

    assert_text "Periodo was successfully created"
    click_on "Back"
  end

  test "should update Periodo" do
    visit periodo_url(@periodo)
    click_on "Edit this periodo", match: :first

    fill_in "Data", with: @periodo.data
    fill_in "Hora final", with: @periodo.hora_final.to_s
    fill_in "Hora inicial", with: @periodo.hora_inicial.to_s
    click_on "Update Periodo"

    assert_text "Periodo was successfully updated"
    click_on "Back"
  end

  test "should destroy Periodo" do
    visit periodo_url(@periodo)
    click_on "Destroy this periodo", match: :first

    assert_text "Periodo was successfully destroyed"
  end
end
