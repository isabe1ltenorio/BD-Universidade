require "test_helper"

class MinistrasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ministra = ministras(:one)
  end

  test "should get index" do
    get ministras_url
    assert_response :success
  end

  test "should get new" do
    get new_ministra_url
    assert_response :success
  end

  test "should create ministra" do
    assert_difference("Ministra.count") do
      post ministras_url, params: { ministra: { ano: @ministra.ano, curso_id: @ministra.curso_id, instrutor_id: @ministra.instrutor_id, secao_id: @ministra.secao_id, semestre: @ministra.semestre } }
    end

    assert_redirected_to ministra_url(Ministra.last)
  end

  test "should show ministra" do
    get ministra_url(@ministra)
    assert_response :success
  end

  test "should get edit" do
    get edit_ministra_url(@ministra)
    assert_response :success
  end

  test "should update ministra" do
    patch ministra_url(@ministra), params: { ministra: { ano: @ministra.ano, curso_id: @ministra.curso_id, instrutor_id: @ministra.instrutor_id, secao_id: @ministra.secao_id, semestre: @ministra.semestre } }
    assert_redirected_to ministra_url(@ministra)
  end

  test "should destroy ministra" do
    assert_difference("Ministra.count", -1) do
      delete ministra_url(@ministra)
    end

    assert_redirected_to ministras_url
  end
end
