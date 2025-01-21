require "application_system_test_case"

class CursosTest < ApplicationSystemTestCase
  setup do
    @curso = cursos(:one)
  end

  test "visiting the index" do
    visit cursos_url
    assert_selector "h1", text: "Cursos"
  end

  test "should create curso" do
    visit cursos_url
    click_on "New curso"

    fill_in "Creditos", with: @curso.creditos
    fill_in "Departamento", with: @curso.departamento_id
    fill_in "Nome curso", with: @curso.nome_curso
    click_on "Create Curso"

    assert_text "Curso was successfully created"
    click_on "Back"
  end

  test "should update Curso" do
    visit curso_url(@curso)
    click_on "Edit this curso", match: :first

    fill_in "Creditos", with: @curso.creditos
    fill_in "Departamento", with: @curso.departamento_id
    fill_in "Nome curso", with: @curso.nome_curso
    click_on "Update Curso"

    assert_text "Curso was successfully updated"
    click_on "Back"
  end

  test "should destroy Curso" do
    visit curso_url(@curso)
    click_on "Destroy this curso", match: :first

    assert_text "Curso was successfully destroyed"
  end
end
