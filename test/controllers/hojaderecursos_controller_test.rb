require 'test_helper'

class HojaderecursosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hojaderecurso = hojaderecursos(:one)
  end

  test "should get index" do
    get hojaderecursos_url
    assert_response :success
  end

  test "should get new" do
    get new_hojaderecurso_url
    assert_response :success
  end

  test "should create hojaderecurso" do
    assert_difference('Hojaderecurso.count') do
      post hojaderecursos_url, params: { hojaderecurso: { agua: @hojaderecurso.agua, apoyoCCO/PC: @hojaderecurso.apoyoCCO/PC, apoyologistico: @hojaderecurso.apoyologistico, atencionPrehospitalaria: @hojaderecurso.atencionPrehospitalaria, basedeoperacionestelefono: @hojaderecurso.basedeoperacionestelefono, baseoperaciones: @hojaderecurso.baseoperaciones, baseoperacionesespecifique: @hojaderecurso.baseoperacionesespecifique, busquedatecnica: @hojaderecurso.busquedatecnica, capacidadmonitoreo: @hojaderecurso.capacidadmonitoreo, categoriarecursos: @hojaderecurso.categoriarecursos, comida: @hojaderecurso.comida, comida: @hojaderecurso.comida, contacto1correo: @hojaderecurso.contacto1correo, contacto1nombre: @hojaderecurso.contacto1nombre, contacto1telefono: @hojaderecurso.contacto1telefono, contacto2: @hojaderecurso.contacto2, contacto2: @hojaderecurso.contacto2, contacto2celular: @hojaderecurso.contacto2celular, cordenadasbasedecimal: @hojaderecurso.cordenadasbasedecimal, cordenadasbaseotroformato: @hojaderecurso.cordenadasbaseotroformato, diesel: @hojaderecurso.diesel, direccionbasedeoperaciones: @hojaderecurso.direccionbasedeoperaciones, equipamiento: @hojaderecurso.equipamiento, equipamientoespecial: @hojaderecurso.equipamientoespecial, equiposdespleagados: @hojaderecurso.equiposdespleagados, especofiquelogistico: @hojaderecurso.especofiquelogistico, fechavigenciaformulario: @hojaderecurso.fechavigenciaformulario, formulariocompletadofecha: @hojaderecurso.formulariocompletadofecha, frecuenciaradiobase: @hojaderecurso.frecuenciaradiobase, gasolina: @hojaderecurso.gasolina, gradoycargo: @hojaderecurso.gradoycargo, identificadorequipo: @hojaderecurso.identificadorequipo, incendioestructura: @hojaderecurso.incendioestructura, nombre: @hojaderecurso.nombre, nombrequipo: @hojaderecurso.nombrequipo, numeroperros: @hojaderecurso.numeroperros, numeropersonas: @hojaderecurso.numeropersonas, otrascapacidades: @hojaderecurso.otrascapacidades, otrorequerimientologistico: @hojaderecurso.otrorequerimientologistico, personasdesplegados: @hojaderecurso.personasdesplegados, preciodiesel: @hojaderecurso.preciodiesel, preciogasolina: @hojaderecurso.preciogasolina, recatevehicula: @hojaderecurso.recatevehicula, requerimientoespacioenCCO: @hojaderecurso.requerimientoespacioenCCO, rescateestrucurascolapsadas: @hojaderecurso.rescateestrucurascolapsadas, rescatevertical: @hojaderecurso.rescatevertical, tiempocomida: @hojaderecurso.tiempocomida, tiemporespesta: @hojaderecurso.tiemporespesta, tipovehiculo: @hojaderecurso.tipovehiculo, transporteperrros: @hojaderecurso.transporteperrros, transportepersonas: @hojaderecurso.transportepersonas, vehiculo: @hojaderecurso.vehiculo, vehiculosdesplegados: @hojaderecurso.vehiculosdesplegados } }
    end

    assert_redirected_to hojaderecurso_url(Hojaderecurso.last)
  end

  test "should show hojaderecurso" do
    get hojaderecurso_url(@hojaderecurso)
    assert_response :success
  end

  test "should get edit" do
    get edit_hojaderecurso_url(@hojaderecurso)
    assert_response :success
  end

  test "should update hojaderecurso" do
    patch hojaderecurso_url(@hojaderecurso), params: { hojaderecurso: { agua: @hojaderecurso.agua, apoyoCCO/PC: @hojaderecurso.apoyoCCO/PC, apoyologistico: @hojaderecurso.apoyologistico, atencionPrehospitalaria: @hojaderecurso.atencionPrehospitalaria, basedeoperacionestelefono: @hojaderecurso.basedeoperacionestelefono, baseoperaciones: @hojaderecurso.baseoperaciones, baseoperacionesespecifique: @hojaderecurso.baseoperacionesespecifique, busquedatecnica: @hojaderecurso.busquedatecnica, capacidadmonitoreo: @hojaderecurso.capacidadmonitoreo, categoriarecursos: @hojaderecurso.categoriarecursos, comida: @hojaderecurso.comida, comida: @hojaderecurso.comida, contacto1correo: @hojaderecurso.contacto1correo, contacto1nombre: @hojaderecurso.contacto1nombre, contacto1telefono: @hojaderecurso.contacto1telefono, contacto2: @hojaderecurso.contacto2, contacto2: @hojaderecurso.contacto2, contacto2celular: @hojaderecurso.contacto2celular, cordenadasbasedecimal: @hojaderecurso.cordenadasbasedecimal, cordenadasbaseotroformato: @hojaderecurso.cordenadasbaseotroformato, diesel: @hojaderecurso.diesel, direccionbasedeoperaciones: @hojaderecurso.direccionbasedeoperaciones, equipamiento: @hojaderecurso.equipamiento, equipamientoespecial: @hojaderecurso.equipamientoespecial, equiposdespleagados: @hojaderecurso.equiposdespleagados, especofiquelogistico: @hojaderecurso.especofiquelogistico, fechavigenciaformulario: @hojaderecurso.fechavigenciaformulario, formulariocompletadofecha: @hojaderecurso.formulariocompletadofecha, frecuenciaradiobase: @hojaderecurso.frecuenciaradiobase, gasolina: @hojaderecurso.gasolina, gradoycargo: @hojaderecurso.gradoycargo, identificadorequipo: @hojaderecurso.identificadorequipo, incendioestructura: @hojaderecurso.incendioestructura, nombre: @hojaderecurso.nombre, nombrequipo: @hojaderecurso.nombrequipo, numeroperros: @hojaderecurso.numeroperros, numeropersonas: @hojaderecurso.numeropersonas, otrascapacidades: @hojaderecurso.otrascapacidades, otrorequerimientologistico: @hojaderecurso.otrorequerimientologistico, personasdesplegados: @hojaderecurso.personasdesplegados, preciodiesel: @hojaderecurso.preciodiesel, preciogasolina: @hojaderecurso.preciogasolina, recatevehicula: @hojaderecurso.recatevehicula, requerimientoespacioenCCO: @hojaderecurso.requerimientoespacioenCCO, rescateestrucurascolapsadas: @hojaderecurso.rescateestrucurascolapsadas, rescatevertical: @hojaderecurso.rescatevertical, tiempocomida: @hojaderecurso.tiempocomida, tiemporespesta: @hojaderecurso.tiemporespesta, tipovehiculo: @hojaderecurso.tipovehiculo, transporteperrros: @hojaderecurso.transporteperrros, transportepersonas: @hojaderecurso.transportepersonas, vehiculo: @hojaderecurso.vehiculo, vehiculosdesplegados: @hojaderecurso.vehiculosdesplegados } }
    assert_redirected_to hojaderecurso_url(@hojaderecurso)
  end

  test "should destroy hojaderecurso" do
    assert_difference('Hojaderecurso.count', -1) do
      delete hojaderecurso_url(@hojaderecurso)
    end

    assert_redirected_to hojaderecursos_url
  end
end
