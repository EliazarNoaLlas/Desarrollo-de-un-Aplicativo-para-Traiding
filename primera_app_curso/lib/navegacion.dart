import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/foundation.dart';
import 'package:primera_app_curso/pagina02.dart';

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
      appBar: AppBar(
        title: Text("Navegacion"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Home",
            ),
            RawMaterialButton(
              child: Text("Ir a la otra pagina"),
              onPressed: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Pagina02()))
              }, // Importamos la pagina 02
            )
          ],
        ),
      ),
    );
  }
}
