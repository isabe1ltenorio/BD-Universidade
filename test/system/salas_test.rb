require "application_system_test_case"

class SalasTest < ApplicationSystemTestCase
  setup do
    @sala = salas(:one)
  end

  test "visiting the index" do
    visit salas_url
    assert_selector "h1", text: "Salas"
  end

  test "should create sala" do
    visit salas_url
    click_on "New sala"

    fill_in "Capacidade", with: @sala.capacidade
    fill_in "Num sala", with: @sala.num_sala
    fill_in "Predio", with: @sala.predio_id
    click_on "Create Sala"

    assert_text "Sala was successfully created"
    click_on "Back"
  end

  test "should update Sala" do
    visit sala_url(@sala)
    click_on "Edit this sala", match: :first

    fill_in "Capacidade", with: @sala.capacidade
    fill_in "Num sala", with: @sala.num_sala
    fill_in "Predio", with: @sala.predio_id
    click_on "Update Sala"

    assert_text "Sala was successfully updated"
    click_on "Back"
  end

  test "should destroy Sala" do
    visit sala_url(@sala)
    click_on "Destroy this sala", match: :first

    assert_text "Sala was successfully destroyed"
  end
end
