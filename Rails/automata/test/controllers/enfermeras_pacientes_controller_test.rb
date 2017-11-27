require 'test_helper'

class EnfermerasPacientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @enfermeras_paciente = enfermeras_pacientes(:one)
  end

  test "should get index" do
    get enfermeras_pacientes_url
    assert_response :success
  end

  test "should get new" do
    get new_enfermeras_paciente_url
    assert_response :success
  end

  test "should create enfermeras_paciente" do
    assert_difference('EnfermerasPaciente.count') do
      post enfermeras_pacientes_url, params: { enfermeras_paciente: { paciente_id: @enfermeras_paciente.paciente_id, user_id: @enfermeras_paciente.user_id } }
    end

    assert_redirected_to enfermeras_paciente_url(EnfermerasPaciente.last)
  end

  test "should show enfermeras_paciente" do
    get enfermeras_paciente_url(@enfermeras_paciente)
    assert_response :success
  end

  test "should get edit" do
    get edit_enfermeras_paciente_url(@enfermeras_paciente)
    assert_response :success
  end

  test "should update enfermeras_paciente" do
    patch enfermeras_paciente_url(@enfermeras_paciente), params: { enfermeras_paciente: { paciente_id: @enfermeras_paciente.paciente_id, user_id: @enfermeras_paciente.user_id } }
    assert_redirected_to enfermeras_paciente_url(@enfermeras_paciente)
  end

  test "should destroy enfermeras_paciente" do
    assert_difference('EnfermerasPaciente.count', -1) do
      delete enfermeras_paciente_url(@enfermeras_paciente)
    end

    assert_redirected_to enfermeras_pacientes_url
  end
end
