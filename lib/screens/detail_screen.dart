import 'package:flutter/material.dart';

import '../constants.dart';
import '../model/equipo.dart';

class DetailScreen extends StatelessWidget {
 
  final Equipo equipo;

  const DetailScreen({Key? key, required this.equipo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(equipo.nombre),
        ),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('País: ${equipo.pais}', style: fromTextStyle),
              const SizedBox(height: 10.0),
              const Divider(color: primaryColor),
              const SizedBox(height: 10.0),
              const SizedBox(height: 5.0),
              Text('Liga : ${equipo.liga}', style: subjectTextStyle),
              const SizedBox(height: 10.0),
              const Divider(color: primaryColor),
              Text('Precio mercado : ${equipo.preciomercado}', style: subjectTextStyle),
              const Divider(color: primaryColor),
              const SizedBox(height: 10.0),
              const SizedBox(height: 5.0),
              Text('Finales disputadas: ${equipo.finalesdisputadas}', style: subjectTextStyle),
              const SizedBox(height: 20.0),
                 ElevatedButton(
                style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(184, 239, 142, 90), // background
                onPrimary: Color.fromARGB(255, 5, 0, 0), // foreground
              ),
              onPressed: () { 
                Navigator.pop(context);
              },
              child: Text('Done'),
)
            ],
            
          ),
          
        ))
        ;
    }
}
