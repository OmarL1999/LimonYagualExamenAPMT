import 'package:flutter/material.dart';
import '../constants.dart';
import '../model/equipo.dart';

class EquipoWidget extends StatelessWidget {
  final Equipo equipo;
  final Function onTap;


  const EquipoWidget(
      {Key? key,
      required this.equipo,
      required this.onTap,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (DragEndDetails details) {
      },
      onLongPress: () {
      },
      onTap: () {
        onTap(equipo);
      },
      
      child: Container(
      
        padding: const EdgeInsets.all(10.0),
        height: 80.0,

        child: Row(
       
          
          children: <Widget> [
            
            
            Expanded(
              flex: 1,
              child: Container(
                height: 12.0,
                
              ),
              
            ),
            Expanded(
              flex: 9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('Nombre : ${equipo.nombre}', style: fromTextStyle),
                   Text('País :${equipo.pais}', style: subjectTextStyle),
                  Text('Precio mercado : ${equipo.preciomercado}',
                      style: fromTextStyle),
                 
                ],
              ),
            )
       
          ],
        ),
      ),
    );
  }
}
