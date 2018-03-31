require 'test_helper'

class RecursoEventosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recurso_evento = recurso_eventos(:one)
  end

  test "should get index" do
    get recurso_eventos_url
    assert_response :success
  end

  test "should get new" do
    get new_recurso_evento_url
    assert_response :success
  end

  test "should create recurso_evento" do
    assert_difference('RecursoEvento.count') do
      post recurso_eventos_url, params: { recurso_evento: { asignadoa: @recurso_evento.asignadoa, clase: @recurso_evento.clase, desmovilizadopor: @recurso_evento.desmovilizadopor, estado: @recurso_evento.estado, fechadesmovilizacion: @recurso_evento.fechadesmovilizacion, fechallegada: @recurso_evento.fechallegada, fechapedido: @recurso_evento.fechapedido, institucion: @recurso_evento.institucion, matricula: @recurso_evento.matricula, numeropersonas: @recurso_evento.numeropersonas, observaciones: @recurso_evento.observaciones, solicitado: @recurso_evento.solicitado, tipo: @recurso_evento.tipo } }
    end

    assert_redirected_to recurso_evento_url(RecursoEvento.last)
  end

  test "should show recurso_evento" do
    get recurso_evento_url(@recurso_evento)
    assert_response :success
  end

  test "should get edit" do
    get edit_recurso_evento_url(@recurso_evento)
    assert_response :success
  end

  test "should update recurso_evento" do
    patch recurso_evento_url(@recurso_evento), params: { recurso_evento: { asignadoa: @recurso_evento.asignadoa, clase: @recurso_evento.clase, desmovilizadopor: @recurso_evento.desmovilizadopor, estado: @recurso_evento.estado, fechadesmovilizacion: @recurso_evento.fechadesmovilizacion, fechallegada: @recurso_evento.fechallegada, fechapedido: @recurso_evento.fechapedido, institucion: @recurso_evento.institucion, matricula: @recurso_evento.matricula, numeropersonas: @recurso_evento.numeropersonas, observaciones: @recurso_evento.observaciones, solicitado: @recurso_evento.solicitado, tipo: @recurso_evento.tipo } }
    assert_redirected_to recurso_evento_url(@recurso_evento)
  end

  test "should destroy recurso_evento" do
    assert_difference('RecursoEvento.count', -1) do
      delete recurso_evento_url(@recurso_evento)
    end

    assert_redirected_to recurso_eventos_url
  end
end
