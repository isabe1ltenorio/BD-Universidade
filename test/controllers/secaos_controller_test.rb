require "test_helper"

class SecaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @secao = secaos(:one)
  end

  test "should get index" do
    get secaos_url
    assert_response :success
  end

  test "should get new" do
    get new_secao_url
    assert_response :success
  end

  test "should create secao" do
    assert_difference("Secao.count") do
      post secaos_url, params: { secao: { ano: @secao.ano, curso_id: @secao.curso_id, num_sala: @secao.num_sala, periodo_id: @secao.periodo_id } }
    end

    assert_redirected_to secao_url(Secao.last)
  end

  test "should show secao" do
    get secao_url(@secao)
    assert_response :success
  end

  test "should get edit" do
    get edit_secao_url(@secao)
    assert_response :success
  end

  test "should update secao" do
    patch secao_url(@secao), params: { secao: { ano: @secao.ano, curso_id: @secao.curso_id, num_sala: @secao.num_sala, periodo_id: @secao.periodo_id } }
    assert_redirected_to secao_url(@secao)
  end

  test "should destroy secao" do
    assert_difference("Secao.count", -1) do
      delete secao_url(@secao)
    end

    assert_redirected_to secaos_url
  end
end
