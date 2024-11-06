import 'package:flutter/material.dart';
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Sección de Inicio de Sesión
          Expanded(
            flex: 10,
            child: Container(
              color: Color(0xFFFF715B), // Color Rosa Coral
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Iniciar Sesión',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 32,
                      color: Color(0xFFFFE0B5), // Color Crema
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Correo:',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 22,
                      color: Color(0xFFFFE0B5), // Color Crema
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 500,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFFFE0B5), // Fondo color crema
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Contraseña:',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 22,
                      color: Color(0xFFFFE0B5), // Color Crema
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 500,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFFFE0B5), // Fondo color crema
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none,
                        ),
                        suffixIcon: Icon(
                          Icons.visibility,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (value) {},
                        activeColor: Color(0xFFFFE0B5), // Color Crema
                      ),
                      Text(
                        'Recuérdame',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 16,
                          color: Color(0xFFFFE0B5), // Color Crema
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                          color: Color(0xFFFFE0B5)), // Borde color crema
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding:
                      EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                    ),
                    child: Text(
                      'Ingresar',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 18,
                        color: Color(0xFFFFE0B5), // Color Crema
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Sección de Logo
          Expanded(
            flex: 10,
            child: Container(
              color: Color(0xFF688E26), // Color Verde
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      '../assets/images/warudu_logo_crema.png', // Ruta de la imagen del logo
                      width: 320, // Ajusta el tamaño según tus necesidades
                      height: 320,
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Warudu',
                      style: TextStyle(
                        fontFamily: 'Aptos',
                        fontSize: 64,
                        color: Color(0xFFFFE0B5), // Color Crema
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Expanded(
            flex: 1,
            child: Container(
              color: Color(0xFFFFE0B5), // Color Crema
            ),
          )
        ],
      ),
    );
  }
}
