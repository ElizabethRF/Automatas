require 'test_helper'

class EnfermeraPacientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @enfermera_paciente = enfermera_pacientes(:one)
  end

  test "should get index" do
    get enfermera_pacientes_url
    assert_response :success
  end

  test "should get new" do
    get new_enfermera_paciente_url
    assert_response :success
  end

  test "should create enfermera_paciente" do
    assert_difference('EnfermeraPaciente.count') do
      post enfermera_pacientes_url, params: { enfermera_paciente: { enfermera_id: @enfermera_paciente.enfermera_id, paciente_id: @enfermera_paciente.paciente_id } }
    end

    assert_redirected_to enfermera_paciente_url(EnfermeraPaciente.last)
  end

  test "should show enfermera_paciente" do
    get enfermera_paciente_url(@enfermera_paciente)
    assert_response :success
  end

  test "should get edit" do
    get edit_enfermera_paciente_url(@enfermera_paciente)
    assert_response :success
  end

  test "should update enfermera_paciente" do
    patch enfermera_paciente_url(@enfermera_paciente), params: { enfermera_paciente: { enfermera_id: @enfermera_paciente.enfermera_id, paciente_id: @enfermera_paciente.paciente_id } }
    assert_redirected_to enfermera_paciente_url(@enfermera_paciente)
  end

  test "should destroy enfermera_paciente" do
    assert_difference('EnfermeraPaciente.count', -1) do
      delete enfermera_paciente_url(@enfermera_paciente)
    end

    assert_redirected_to enfermera_pacientes_url
  end
end
