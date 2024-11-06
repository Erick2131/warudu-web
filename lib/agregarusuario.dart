import 'package:flutter/material.dart';
import 'navbar.dart';

class AddUsuario extends StatefulWidget {
  @override
  _AddUsuarioState createState() => _AddUsuarioState();
}

class _AddUsuarioState extends State<AddUsuario> {
  String? _selectedUserType = 'admin'; // Valor inicial del radio button

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFE0B5),
      appBar: AppBar(
        title: Text('Ingredientes'),
        backgroundColor: Color(0xFFFF715B),
      ),
      drawer: Navbar(), // Aquí puedes usar tu propio widget Navbar si lo tienes definido
      body: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text('Nombre', style: TextStyle(color: Color(0xFFFF715B))),
                  Container(
                    width: 500,
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(color: Color(0xFFFF715B)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 100),
                  Text('Imagen', style: TextStyle(color: Color(0xFFFF715B))),
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(1.0),
                        borderSide: BorderSide(color: Color(0xFFFF715B)),
                      ),
                    ),
                  ),
                  SizedBox(height: 100),
                  Text('Correo', style: TextStyle(color: Color(0xFFFF715B))),
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(1.0),
                        borderSide: BorderSide(color: Color(0xFFFF715B)),
                      ),
                    ),
                  ),
                  SizedBox(height: 100),
                  Text('Contraseña', style: TextStyle(color: Color(0xFFFF715B))),
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(1.0),
                        borderSide: BorderSide(color: Color(0xFFFF715B)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 1),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center, // Alineación a la izquierda
                children: [
                  Container(
                    child: Text(
                      'Tipo de usuario',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10), // Espacio entre el título y los radios
                  Column(
                    children: [
                      ListTile(
                        title: Text('Usuario Administrador'),
                        leading: Radio<String>(
                          value: 'admin',
                          groupValue: _selectedUserType,
                          onChanged: (String? value) {
                            setState(() {
                              _selectedUserType = value;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: Text('Usuario Regular'),
                        leading: Radio<String>(
                          value: 'regular',
                          groupValue: _selectedUserType,
                          onChanged: (String? value) {
                            setState(() {
                              _selectedUserType = value;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: Text('Usuario Premium'),
                        leading: Radio<String>(
                          value: 'premium',
                          groupValue: _selectedUserType,
                          onChanged: (String? value) {
                            setState(() {
                              _selectedUserType = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20), // Espacio entre los radios y el botón
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: FilledButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '');
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Color(0xFFFF715B)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                      child: Text(
                        'Agregar',
                        style: TextStyle(color: Color(0xFFFFE0B5)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
