require "test_helper"

class MentoriaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mentorium = mentoria(:one)
  end

  test "should get index" do
    get mentoria_url
    assert_response :success
  end

  test "should get new" do
    get new_mentorium_url
    assert_response :success
  end

  test "should create mentorium" do
    assert_difference("Mentoria.count") do
      post mentoria_url, params: { mentorium: { aluno_id: @mentorium.aluno_id, instrutor_id: @mentorium.instrutor_id, nota: @mentorium.nota } }
    end

    assert_redirected_to mentorium_url(Mentoria.last)
  end

  test "should show mentorium" do
    get mentorium_url(@mentorium)
    assert_response :success
  end

  test "should get edit" do
    get edit_mentorium_url(@mentorium)
    assert_response :success
  end

  test "should update mentorium" do
    patch mentorium_url(@mentorium), params: { mentorium: { aluno_id: @mentorium.aluno_id, instrutor_id: @mentorium.instrutor_id, nota: @mentorium.nota } }
    assert_redirected_to mentorium_url(@mentorium)
  end

  test "should destroy mentorium" do
    assert_difference("Mentoria.count", -1) do
      delete mentorium_url(@mentorium)
    end

    assert_redirected_to mentoria_url
  end
end
