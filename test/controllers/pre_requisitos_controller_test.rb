require "test_helper"

class PreRequisitosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pre_requisito = pre_requisitos(:one)
  end

  test "should get index" do
    get pre_requisitos_url
    assert_response :success
  end

  test "should get new" do
    get new_pre_requisito_url
    assert_response :success
  end

  test "should create pre_requisito" do
    assert_difference("PreRequisito.count") do
      post pre_requisitos_url, params: { pre_requisito: {} }
    end

    assert_redirected_to pre_requisito_url(PreRequisito.last)
  end

  test "should show pre_requisito" do
    get pre_requisito_url(@pre_requisito)
    assert_response :success
  end

  test "should get edit" do
    get edit_pre_requisito_url(@pre_requisito)
    assert_response :success
  end

  test "should update pre_requisito" do
    patch pre_requisito_url(@pre_requisito), params: { pre_requisito: {} }
    assert_redirected_to pre_requisito_url(@pre_requisito)
  end

  test "should destroy pre_requisito" do
    assert_difference("PreRequisito.count", -1) do
      delete pre_requisito_url(@pre_requisito)
    end

    assert_redirected_to pre_requisitos_url
  end
end
