import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/foundation.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi App",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: cuerpo(),
    );
  }
}

Widget cuerpo() {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
      image: NetworkImage(
          "https://images.pexels.com/photos/1723637/pexels-photo-1723637.jpeg?auto=compress&cs=tinysrgb&w=600"),
      fit: BoxFit.cover,
    )),
    child: Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        nombre(),
        campoUsuario(),
        campoContrasena(),
        SizedBox(
          height: 10,
        ),
        botonEntrar()
      ],
    )),
  );
}

Widget nombre() {
  return Text(
    "Sign in",
    style: TextStyle(
        color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.bold),
  );
}

Widget campoUsuario() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
    child: TextField(
      decoration: InputDecoration(
        hintText: "User: ",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget campoContrasena() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Password: ",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget botonEntrar() {
  return RawMaterialButton(
    fillColor: Color.fromARGB(234, 218, 66, 19),
    padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
    onPressed: () {},
    child: Text(
      "Enter",
      style: TextStyle(fontSize: 25, color: Colors.white),
    ),
  );
}
