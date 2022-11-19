import 'package:flutter/material.dart';

import '../constants.dart';
import '../model/backend.dart';
import '../widgets/equipo_widget.dart';
import 'detail_screen.dart';
import '../model/equipo.dart';

class ListScreen extends StatefulWidget {


  const ListScreen({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {


  
  
  var equipos = Backend().getEquipos();
 

  void showDetail( Equipo equipo) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return DetailScreen( equipo: equipo,);
    }));
    
    setState(() {
 
      equipos = Backend().getEquipos();
    });
  }

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title), 

       
      ),


      
      body: ListView.separated(
        itemCount: equipos.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(
          color: primaryColor,
          indent: 40.0,
          endIndent: 20.0,
        ),
          itemBuilder: (BuildContext context, int index) => EquipoWidget(
          equipo: equipos[index],
          onTap: showDetail,  
    
  
        ),
      
          
      ),  

    );  
  }
}
