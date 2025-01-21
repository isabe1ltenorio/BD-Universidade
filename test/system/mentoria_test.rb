require "application_system_test_case"

class MentoriaTest < ApplicationSystemTestCase
  setup do
    @mentorium = mentoria(:one)
  end

  test "visiting the index" do
    visit mentoria_url
    assert_selector "h1", text: "Mentoria"
  end

  test "should create mentorium" do
    visit mentoria_url
    click_on "New mentorium"

    fill_in "Aluno", with: @mentorium.aluno_id
    fill_in "Instrutor", with: @mentorium.instrutor_id
    fill_in "Nota", with: @mentorium.nota
    click_on "Create Mentoria"

    assert_text "Mentoria was successfully created"
    click_on "Back"
  end

  test "should update Mentoria" do
    visit mentorium_url(@mentorium)
    click_on "Edit this mentorium", match: :first

    fill_in "Aluno", with: @mentorium.aluno_id
    fill_in "Instrutor", with: @mentorium.instrutor_id
    fill_in "Nota", with: @mentorium.nota
    click_on "Update Mentoria"

    assert_text "Mentoria was successfully updated"
    click_on "Back"
  end

  test "should destroy Mentoria" do
    visit mentorium_url(@mentorium)
    click_on "Destroy this mentorium", match: :first

    assert_text "Mentoria was successfully destroyed"
  end
end
