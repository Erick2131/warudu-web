import 'package:flutter/material.dart';
import 'D:\/warudu_web_app/lib/navbar.dart';

class AddIngrediente extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xFFFFE0B5),
      appBar: AppBar(
        title: Text('Ingredientes'), backgroundColor: Color(0xFFFFE0B5)
    ),
    drawer: Navbar(),
    body: Row(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child:Column(
              children: [
                Text('Nombre', style: TextStyle(color:Color(0xFFFF715B))),
                Container(
                  width: 500,
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: Color(0xFFFF715B))
                      )
                    )
                  )
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  'Imagen',
                  style: TextStyle(color: Color(0xFFFF715B))
                ),
                TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1.0),
                      borderSide: BorderSide(color: Color(0xFFFF715B))
                    )
                  ),
                ),
                SizedBox(
                  height: 100
                )
              ],
            )
          )
        ),
        SizedBox(width:1),
        Expanded(
            child: Padding(
                padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height:400),
                SizedBox(
                  width: 200, height: 50,
                  child: FilledButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '');
                    },
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xFFFF715B)), shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))),
                    child: Text(
                      'Agregar',
                      style: TextStyle(color: Color(0xFFFFE0B5)),
                    ),
                  ),
                ),
              ],
            ),))
      ],
    ),
    );
  }
}