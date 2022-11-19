import 'equipo.dart';

class Backend {

  static final Backend _backend = Backend._internal();

  factory Backend() {
    return _backend;
  }

  Backend._internal();

  final _equipos=[
     Equipo(id: 1, nombre: ' Arsenal', finalesdisputadas: '5 finales', pais:'Inglaterra' , preciomercado: '700 Millones ' , liga: 'Premeir League'),
      Equipo(id: 2, nombre: 'Flamengo', finalesdisputadas: '10 finales', pais: 'Brasil' , preciomercado: '640 000 millones', liga: 'Seria A'),
      Equipo(id: 3, nombre: 'Barcelona BSC', finalesdisputadas: ' 14 finales', pais: 'Ecuador ' , preciomercado: '350 Millones', liga: 'Seria A Nacional Ecuador'),
      Equipo(id: 4, nombre: 'Lo Porto FC', finalesdisputadas: '20 finales', pais: 'Portugal' , preciomercado: '500 Millones', liga: 'Serie A Portugal'),
       Equipo(id: 5, nombre: 'PSG', finalesdisputadas: '15 finales.', pais: 'Francia', preciomercado: '700 Millones', liga: 'Liga Francia A'),
  ];


 List<Equipo> getEquipos(){
   return _equipos;
 }
 


}
