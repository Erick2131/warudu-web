import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  // Lista de elementos para mostrar
  final List<String> entries = <String>['Ingredientes', 'Platillos', 'Usuarios'];

  // Lista de colores para cada entrada
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            color: Color(0xFF688E26),
            width: double.infinity,
            height: 300, // Ajusta la altura según tus necesidades
            child: DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  SizedBox(
                    width: 200,
                    height: 200,
                    child: Image.asset('../assets/images/warudu_logo_crema.png'),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Warudu',
                    style: TextStyle(
                      fontSize: 32,
                      color: Color(0xFFFFE0B5),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Color(0xFF688E26),
              width: double.infinity,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: entries.length, // Cuenta la cantidad de elementos
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Center(
                      child: Text(
                        entries[index], // Usamos las entradas definidas
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFFFFE0B5),
                        ),
                      ),
                    ),
                    tileColor: Colors.amber[colorCodes[index]], // Usamos los colores definidos
                    onTap: () {
                      // Aquí manejas el evento de tap
                      print('${entries[index]} tapped');
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
