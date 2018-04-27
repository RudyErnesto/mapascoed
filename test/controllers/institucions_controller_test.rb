require 'test_helper'

class InstitucionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @institucion = institucions(:one)
  end

  test "should get index" do
    get institucions_url
    assert_response :success
  end

  test "should get new" do
    get new_institucion_url
    assert_response :success
  end

  test "should create institucion" do
    assert_difference('Institucion.count') do
      post institucions_url, params: { institucion: { acciondetalle: @institucion.acciondetalle, accionotro: @institucion.accionotro, activacionesautomaticas: @institucion.activacionesautomaticas, aguaysaneamiento: @institucion.aguaysaneamiento, albergues: @institucion.albergues, ambulanciascantidad: @institucion.ambulanciascantidad, ambulanciascapacidadpersonas: @institucion.ambulanciascapacidadpersonas, ambulanciasestado: @institucion.ambulanciasestado, ambulanciasobservaciones: @institucion.ambulanciasobservaciones, antropicas: @institucion.antropicas, antropicas: @institucion.antropicas, antropicasincendios: @institucion.antropicasincendios, antropicasotros: @institucion.antropicasotros, appa: @institucion.appa, appapersonas: @institucion.appapersonas, areacomunicaciones: @institucion.areacomunicaciones, areadetalle: @institucion.areadetalle, areadocumentacion: @institucion.areadocumentacion, areaemergenciamedica: @institucion.areaemergenciamedica, areaevaluaciondemergencia: @institucion.areaevaluaciondemergencia, areaflujo: @institucion.areaflujo, arealogistica: @institucion.arealogistica, areamovilizacion: @institucion.areamovilizacion, areaoperaciones: @institucion.areaoperaciones, areaotros: @institucion.areaotros, areaseguridad: @institucion.areaseguridad, areatransporte: @institucion.areatransporte, brazosoperativosareas: @institucion.brazosoperativosareas, brec: @institucion.brec, brecpersonas: @institucion.brecpersonas, capacitadosincidentes: @institucion.capacitadosincidentes, capacitadosobservaciones: @institucion.capacitadosobservaciones, caracteristicasestructurales: @institucion.caracteristicasestructurales, cargi: @institucion.cargi, cargo: @institucion.cargo, carrosbomberos: @institucion.carrosbomberos, carrosbomberosestado: @institucion.carrosbomberosestado, carrosbomberosobservaciones: @institucion.carrosbomberosobservaciones, carrosbomberospersonas: @institucion.carrosbomberospersonas, cbsci: @institucion.cbsci, cbscipersonas: @institucion.cbscipersonas, celular: @institucion.celular, cisternas: @institucion.cisternas, cisternasestado: @institucion.cisternasestado, cisternasobservaciones: @institucion.cisternasobservaciones, cisternaspersonas: @institucion.cisternaspersonas, coberturageogracia: @institucion.coberturageogracia, coe: @institucion.coe, coedepartalemtal: @institucion.coedepartalemtal, coemunicipal: @institucion.coemunicipal, coenacional: @institucion.coenacional, comisionesdepartales: @institucion.comisionesdepartales, comisionesmunicipalesCOEM: @institucion.comisionesmunicipalesCOEM, comunicacionesatelital: @institucion.comunicacionesatelital, comunicacionsatelital: @institucion.comunicacionsatelital, consideracionespeciales: @institucion.consideracionespeciales, consorciodeong: @institucion.consorciodeong, cpi: @institucion.cpi, cpipersonas: @institucion.cpipersonas, crecl: @institucion.crecl, creclpersonas: @institucion.creclpersonas, departamento: @institucion.departamento, detalle: @institucion.detalle, detalle: @institucion.detalle, detallecomisiones: @institucion.detallecomisiones, detalleprivado: @institucion.detalleprivado, detallesCOEM: @institucion.detallesCOEM, detallesinfinesdelucro: @institucion.detallesinfinesdelucro, detalleslocal: @institucion.detalleslocal, detallesobservatorio: @institucion.detallesobservatorio, dgr: @institucion.dgr, direccion: @institucion.direccion, direccion: @institucion.direccion, educacion: @institucion.educacion, email: @institucion.email, encasosiemergencia: @institucion.encasosiemergencia, encasosiprotocolo: @institucion.encasosiprotocolo, equiporadioobservaciones: @institucion.equiporadioobservaciones, equiporadios: @institucion.equiporadios, equiporadios: @institucion.equiporadios, especialidadesmandato: @institucion.especialidadesmandato, especialidadlogicasticapersonas: @institucion.especialidadlogicasticapersonas, especialidadlogistica: @institucion.especialidadlogistica, especialidadrescatepersonas: @institucion.especialidadrescatepersonas, especidalidadcomunicacionespersonas: @institucion.especidalidadcomunicacionespersonas, especidalidadrescateactuatico: @institucion.especidalidadrescateactuatico, especilidadcomunicaciones: @institucion.especilidadcomunicaciones, estadisticas: @institucion.estadisticas, estadotiempo: @institucion.estadotiempo, evacuaionemergencia: @institucion.evacuaionemergencia, eventosfrecuentes: @institucion.eventosfrecuentes, extincionincendiosurbanos: @institucion.extincionincendiosurbanos, extincionserviciosurbanospersonas: @institucion.extincionserviciosurbanospersonas, fax: @institucion.fax, gobernabilidadproteccion: @institucion.gobernabilidadproteccion, gps: @institucion.gps, gpsestado: @institucion.gpsestado, gpsobservaciones: @institucion.gpsobservaciones, grupovoluntario: @institucion.grupovoluntario, grus: @institucion.grus, incendiosforestales: @institucion.incendiosforestales, incendiosforestalespersonas: @institucion.incendiosforestalespersonas, institucionprivada: @institucion.institucionprivada, institucionpublica: @institucion.institucionpublica, local: @institucion.local, localidad: @institucion.localidad, mandatodetalle: @institucion.mandatodetalle, mandatogestionriesgo: @institucion.mandatogestionriesgo, mandatootro: @institucion.mandatootro, mandatoseguridad: @institucion.mandatoseguridad, manejadorperros: @institucion.manejadorperros, manejadorperrospersona: @institucion.manejadorperrospersona, manejogeneral: @institucion.manejogeneral, mapasderiesgo: @institucion.mapasderiesgo, maquinariapesada: @institucion.maquinariapesada, maquinariapesadaestado: @institucion.maquinariapesadaestado, maquinariapesadaobservaciones: @institucion.maquinariapesadaobservaciones, maquinariapesadapersonas: @institucion.maquinariapesadapersonas, medicos: @institucion.medicos, mediofrecuencia: @institucion.mediofrecuencia, mediollamadas: @institucion.mediollamadas, medioradio: @institucion.medioradio, mediosdetalles: @institucion.mediosdetalles, mediotv: @institucion.mediotv, mesassectoriales: @institucion.mesassectoriales, municipio: @institucion.municipio, nombre: @institucion.nombre, nombrecontacto: @institucion.nombrecontacto, numeromedicos: @institucion.numeromedicos, observaciones: @institucion.observaciones, observatorios: @institucion.observatorios, operativoactivo: @institucion.operativoactivo, operativoactivopersonas: @institucion.operativoactivopersonas, otros: @institucion.otros, otros: @institucion.otros, otrosdetalle: @institucion.otrosdetalle, otrosdetallessocios: @institucion.otrosdetallessocios, otrossocios: @institucion.otrossocios, paginweb: @institucion.paginweb, pasivosenreserva: @institucion.pasivosenreserva, pasivosenreservapersonas: @institucion.pasivosenreservapersonas, patrullas: @institucion.patrullas, patrullasestado: @institucion.patrullasestado, patrullasobservaciones: @institucion.patrullasobservaciones, patrullaspersonas: @institucion.patrullaspersonas, personaencargada: @institucion.personaencargada, plandecontingencia: @institucion.plandecontingencia, plandeemergencia: @institucion.plandeemergencia, planencasosi: @institucion.planencasosi, planosdellugar: @institucion.planosdellugar, porcentajerespuesta: @institucion.porcentajerespuesta, primap: @institucion.primap, primapersonas: @institucion.primapersonas, protocolodeaccion: @institucion.protocolodeaccion, recuperacion: @institucion.recuperacion, recursoadministrativo: @institucion.recursoadministrativo, recursoadministrativo: @institucion.recursoadministrativo, recursosoperativo: @institucion.recursosoperativo, recursosoperativopersonas: @institucion.recursosoperativopersonas, requerimientootrodetalle: @institucion.requerimientootrodetalle, requerimientosuperios: @institucion.requerimientosuperios, requerimientosuperiosdetalle: @institucion.requerimientosuperiosdetalle, respuestaderrumber: @institucion.respuestaderrumber, respuestadeslizamiento: @institucion.respuestadeslizamiento, respuestadetalle: @institucion.respuestadetalle, respuestageologicas: @institucion.respuestageologicas, respuestahidrometeorologicas: @institucion.respuestahidrometeorologicas, respuestainundaciones: @institucion.respuestainundaciones, respuestanaturales: @institucion.respuestanaturales, respuestaotros: @institucion.respuestaotros, respuestariadas: @institucion.respuestariadas, respuestasismos: @institucion.respuestasismos, respuestavientosfuertes: @institucion.respuestavientosfuertes, salud: @institucion.salud, salvamientoacuatico: @institucion.salvamientoacuatico, satelitalobservaciones: @institucion.satelitalobservaciones, sbv: @institucion.sbv, sbv: @institucion.sbv, seguridadalimentaria: @institucion.seguridadalimentaria, seguridadyproteccion: @institucion.seguridadyproteccion, serviciobusquedaperros: @institucion.serviciobusquedaperros, serviciobusquedayrescate: @institucion.serviciobusquedayrescate, serviciobusquedayrescateenaltura: @institucion.serviciobusquedayrescateenaltura, serviciodetalle: @institucion.serviciodetalle, servicioevaluacion: @institucion.servicioevaluacion, servicioincendioforestal: @institucion.servicioincendioforestal, serviciomanejomateriales: @institucion.serviciomanejomateriales, serviciosaludysaneamiento: @institucion.serviciosaludysaneamiento, serviciosalvamiento: @institucion.serviciosalvamiento, servicioseguridad: @institucion.servicioseguridad, serviciosincendiosurbanos: @institucion.serviciosincendiosurbanos, serviciospublicos: @institucion.serviciospublicos, serviciotelecomunicaciones: @institucion.serviciotelecomunicaciones, serviciotransporte: @institucion.serviciotransporte, sinfinesdelucro: @institucion.sinfinesdelucro, situacionesactual: @institucion.situacionesactual, socioambiental: @institucion.socioambiental, sociodetalle: @institucion.sociodetalle, socioincendio: @institucion.socioincendio, socionatural: @institucion.socionatural, sociootro: @institucion.sociootro, tareasemergencia: @institucion.tareasemergencia, tareasprotocolo: @institucion.tareasprotocolo, telefono: @institucion.telefono, telefono: @institucion.telefono, temasdesalud: @institucion.temasdesalud, tiempoencargo: @institucion.tiempoencargo, trabajosiniciales: @institucion.trabajosiniciales, transliviano: @institucion.transliviano, translivianobservaciones: @institucion.translivianobservaciones, translivianoestado: @institucion.translivianoestado, translivianopersonas: @institucion.translivianopersonas, transpesado: @institucion.transpesado, transpesadoestado: @institucion.transpesadoestado, transpesadopersonas: @institucion.transpesadopersonas, transpesadosobservaciones: @institucion.transpesadosobservaciones, ugr: @institucion.ugr, unete: @institucion.unete } }
    end

    assert_redirected_to institucion_url(Institucion.last)
  end

  test "should show institucion" do
    get institucion_url(@institucion)
    assert_response :success
  end

  test "should get edit" do
    get edit_institucion_url(@institucion)
    assert_response :success
  end

  test "should update institucion" do
    patch institucion_url(@institucion), params: { institucion: { acciondetalle: @institucion.acciondetalle, accionotro: @institucion.accionotro, activacionesautomaticas: @institucion.activacionesautomaticas, aguaysaneamiento: @institucion.aguaysaneamiento, albergues: @institucion.albergues, ambulanciascantidad: @institucion.ambulanciascantidad, ambulanciascapacidadpersonas: @institucion.ambulanciascapacidadpersonas, ambulanciasestado: @institucion.ambulanciasestado, ambulanciasobservaciones: @institucion.ambulanciasobservaciones, antropicas: @institucion.antropicas, antropicas: @institucion.antropicas, antropicasincendios: @institucion.antropicasincendios, antropicasotros: @institucion.antropicasotros, appa: @institucion.appa, appapersonas: @institucion.appapersonas, areacomunicaciones: @institucion.areacomunicaciones, areadetalle: @institucion.areadetalle, areadocumentacion: @institucion.areadocumentacion, areaemergenciamedica: @institucion.areaemergenciamedica, areaevaluaciondemergencia: @institucion.areaevaluaciondemergencia, areaflujo: @institucion.areaflujo, arealogistica: @institucion.arealogistica, areamovilizacion: @institucion.areamovilizacion, areaoperaciones: @institucion.areaoperaciones, areaotros: @institucion.areaotros, areaseguridad: @institucion.areaseguridad, areatransporte: @institucion.areatransporte, brazosoperativosareas: @institucion.brazosoperativosareas, brec: @institucion.brec, brecpersonas: @institucion.brecpersonas, capacitadosincidentes: @institucion.capacitadosincidentes, capacitadosobservaciones: @institucion.capacitadosobservaciones, caracteristicasestructurales: @institucion.caracteristicasestructurales, cargi: @institucion.cargi, cargo: @institucion.cargo, carrosbomberos: @institucion.carrosbomberos, carrosbomberosestado: @institucion.carrosbomberosestado, carrosbomberosobservaciones: @institucion.carrosbomberosobservaciones, carrosbomberospersonas: @institucion.carrosbomberospersonas, cbsci: @institucion.cbsci, cbscipersonas: @institucion.cbscipersonas, celular: @institucion.celular, cisternas: @institucion.cisternas, cisternasestado: @institucion.cisternasestado, cisternasobservaciones: @institucion.cisternasobservaciones, cisternaspersonas: @institucion.cisternaspersonas, coberturageogracia: @institucion.coberturageogracia, coe: @institucion.coe, coedepartalemtal: @institucion.coedepartalemtal, coemunicipal: @institucion.coemunicipal, coenacional: @institucion.coenacional, comisionesdepartales: @institucion.comisionesdepartales, comisionesmunicipalesCOEM: @institucion.comisionesmunicipalesCOEM, comunicacionesatelital: @institucion.comunicacionesatelital, comunicacionsatelital: @institucion.comunicacionsatelital, consideracionespeciales: @institucion.consideracionespeciales, consorciodeong: @institucion.consorciodeong, cpi: @institucion.cpi, cpipersonas: @institucion.cpipersonas, crecl: @institucion.crecl, creclpersonas: @institucion.creclpersonas, departamento: @institucion.departamento, detalle: @institucion.detalle, detalle: @institucion.detalle, detallecomisiones: @institucion.detallecomisiones, detalleprivado: @institucion.detalleprivado, detallesCOEM: @institucion.detallesCOEM, detallesinfinesdelucro: @institucion.detallesinfinesdelucro, detalleslocal: @institucion.detalleslocal, detallesobservatorio: @institucion.detallesobservatorio, dgr: @institucion.dgr, direccion: @institucion.direccion, direccion: @institucion.direccion, educacion: @institucion.educacion, email: @institucion.email, encasosiemergencia: @institucion.encasosiemergencia, encasosiprotocolo: @institucion.encasosiprotocolo, equiporadioobservaciones: @institucion.equiporadioobservaciones, equiporadios: @institucion.equiporadios, equiporadios: @institucion.equiporadios, especialidadesmandato: @institucion.especialidadesmandato, especialidadlogicasticapersonas: @institucion.especialidadlogicasticapersonas, especialidadlogistica: @institucion.especialidadlogistica, especialidadrescatepersonas: @institucion.especialidadrescatepersonas, especidalidadcomunicacionespersonas: @institucion.especidalidadcomunicacionespersonas, especidalidadrescateactuatico: @institucion.especidalidadrescateactuatico, especilidadcomunicaciones: @institucion.especilidadcomunicaciones, estadisticas: @institucion.estadisticas, estadotiempo: @institucion.estadotiempo, evacuaionemergencia: @institucion.evacuaionemergencia, eventosfrecuentes: @institucion.eventosfrecuentes, extincionincendiosurbanos: @institucion.extincionincendiosurbanos, extincionserviciosurbanospersonas: @institucion.extincionserviciosurbanospersonas, fax: @institucion.fax, gobernabilidadproteccion: @institucion.gobernabilidadproteccion, gps: @institucion.gps, gpsestado: @institucion.gpsestado, gpsobservaciones: @institucion.gpsobservaciones, grupovoluntario: @institucion.grupovoluntario, grus: @institucion.grus, incendiosforestales: @institucion.incendiosforestales, incendiosforestalespersonas: @institucion.incendiosforestalespersonas, institucionprivada: @institucion.institucionprivada, institucionpublica: @institucion.institucionpublica, local: @institucion.local, localidad: @institucion.localidad, mandatodetalle: @institucion.mandatodetalle, mandatogestionriesgo: @institucion.mandatogestionriesgo, mandatootro: @institucion.mandatootro, mandatoseguridad: @institucion.mandatoseguridad, manejadorperros: @institucion.manejadorperros, manejadorperrospersona: @institucion.manejadorperrospersona, manejogeneral: @institucion.manejogeneral, mapasderiesgo: @institucion.mapasderiesgo, maquinariapesada: @institucion.maquinariapesada, maquinariapesadaestado: @institucion.maquinariapesadaestado, maquinariapesadaobservaciones: @institucion.maquinariapesadaobservaciones, maquinariapesadapersonas: @institucion.maquinariapesadapersonas, medicos: @institucion.medicos, mediofrecuencia: @institucion.mediofrecuencia, mediollamadas: @institucion.mediollamadas, medioradio: @institucion.medioradio, mediosdetalles: @institucion.mediosdetalles, mediotv: @institucion.mediotv, mesassectoriales: @institucion.mesassectoriales, municipio: @institucion.municipio, nombre: @institucion.nombre, nombrecontacto: @institucion.nombrecontacto, numeromedicos: @institucion.numeromedicos, observaciones: @institucion.observaciones, observatorios: @institucion.observatorios, operativoactivo: @institucion.operativoactivo, operativoactivopersonas: @institucion.operativoactivopersonas, otros: @institucion.otros, otros: @institucion.otros, otrosdetalle: @institucion.otrosdetalle, otrosdetallessocios: @institucion.otrosdetallessocios, otrossocios: @institucion.otrossocios, paginweb: @institucion.paginweb, pasivosenreserva: @institucion.pasivosenreserva, pasivosenreservapersonas: @institucion.pasivosenreservapersonas, patrullas: @institucion.patrullas, patrullasestado: @institucion.patrullasestado, patrullasobservaciones: @institucion.patrullasobservaciones, patrullaspersonas: @institucion.patrullaspersonas, personaencargada: @institucion.personaencargada, plandecontingencia: @institucion.plandecontingencia, plandeemergencia: @institucion.plandeemergencia, planencasosi: @institucion.planencasosi, planosdellugar: @institucion.planosdellugar, porcentajerespuesta: @institucion.porcentajerespuesta, primap: @institucion.primap, primapersonas: @institucion.primapersonas, protocolodeaccion: @institucion.protocolodeaccion, recuperacion: @institucion.recuperacion, recursoadministrativo: @institucion.recursoadministrativo, recursoadministrativo: @institucion.recursoadministrativo, recursosoperativo: @institucion.recursosoperativo, recursosoperativopersonas: @institucion.recursosoperativopersonas, requerimientootrodetalle: @institucion.requerimientootrodetalle, requerimientosuperios: @institucion.requerimientosuperios, requerimientosuperiosdetalle: @institucion.requerimientosuperiosdetalle, respuestaderrumber: @institucion.respuestaderrumber, respuestadeslizamiento: @institucion.respuestadeslizamiento, respuestadetalle: @institucion.respuestadetalle, respuestageologicas: @institucion.respuestageologicas, respuestahidrometeorologicas: @institucion.respuestahidrometeorologicas, respuestainundaciones: @institucion.respuestainundaciones, respuestanaturales: @institucion.respuestanaturales, respuestaotros: @institucion.respuestaotros, respuestariadas: @institucion.respuestariadas, respuestasismos: @institucion.respuestasismos, respuestavientosfuertes: @institucion.respuestavientosfuertes, salud: @institucion.salud, salvamientoacuatico: @institucion.salvamientoacuatico, satelitalobservaciones: @institucion.satelitalobservaciones, sbv: @institucion.sbv, sbv: @institucion.sbv, seguridadalimentaria: @institucion.seguridadalimentaria, seguridadyproteccion: @institucion.seguridadyproteccion, serviciobusquedaperros: @institucion.serviciobusquedaperros, serviciobusquedayrescate: @institucion.serviciobusquedayrescate, serviciobusquedayrescateenaltura: @institucion.serviciobusquedayrescateenaltura, serviciodetalle: @institucion.serviciodetalle, servicioevaluacion: @institucion.servicioevaluacion, servicioincendioforestal: @institucion.servicioincendioforestal, serviciomanejomateriales: @institucion.serviciomanejomateriales, serviciosaludysaneamiento: @institucion.serviciosaludysaneamiento, serviciosalvamiento: @institucion.serviciosalvamiento, servicioseguridad: @institucion.servicioseguridad, serviciosincendiosurbanos: @institucion.serviciosincendiosurbanos, serviciospublicos: @institucion.serviciospublicos, serviciotelecomunicaciones: @institucion.serviciotelecomunicaciones, serviciotransporte: @institucion.serviciotransporte, sinfinesdelucro: @institucion.sinfinesdelucro, situacionesactual: @institucion.situacionesactual, socioambiental: @institucion.socioambiental, sociodetalle: @institucion.sociodetalle, socioincendio: @institucion.socioincendio, socionatural: @institucion.socionatural, sociootro: @institucion.sociootro, tareasemergencia: @institucion.tareasemergencia, tareasprotocolo: @institucion.tareasprotocolo, telefono: @institucion.telefono, telefono: @institucion.telefono, temasdesalud: @institucion.temasdesalud, tiempoencargo: @institucion.tiempoencargo, trabajosiniciales: @institucion.trabajosiniciales, transliviano: @institucion.transliviano, translivianobservaciones: @institucion.translivianobservaciones, translivianoestado: @institucion.translivianoestado, translivianopersonas: @institucion.translivianopersonas, transpesado: @institucion.transpesado, transpesadoestado: @institucion.transpesadoestado, transpesadopersonas: @institucion.transpesadopersonas, transpesadosobservaciones: @institucion.transpesadosobservaciones, ugr: @institucion.ugr, unete: @institucion.unete } }
    assert_redirected_to institucion_url(@institucion)
  end

  test "should destroy institucion" do
    assert_difference('Institucion.count', -1) do
      delete institucion_url(@institucion)
    end

    assert_redirected_to institucions_url
  end
end