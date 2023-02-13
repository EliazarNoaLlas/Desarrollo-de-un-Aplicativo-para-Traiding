import 'package:flutter/material.dart';

class Pagina02 extends StatelessWidget {
  const Pagina02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pagina 02")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          Text("Terminos y condiciones "),
          Text(
            "Para usar esta App usted tiene que aceptar los terminos y condiciones Para usar esta App usted tiene que aceptar los terminos y condiciones Para usar esta App usted tiene que aceptar los terminos y condiciones Para usar esta App usted tiene que aceptar los terminos y condiciones",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Para usar esta App usted tiene que aceptar los terminos y condiciones Para usar esta App usted tiene que aceptar los terminos y condiciones Para usar esta App usted tiene que aceptar los terminos y condiciones Para usar esta App usted tiene que aceptar los terminos y condiciones",
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.justify,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Para usar esta App usted tiene que aceptar los terminos y condiciones Para usar esta App usted tiene que aceptar los terminos y condiciones Para usar esta App usted tiene que aceptar los terminos y condiciones Para usar esta App usted tiene que aceptar los terminos y condiciones",
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.justify,
          ),
          SizedBox(
            height: 15,
          ),
          RawMaterialButton(
            padding: EdgeInsets.all(20),
            fillColor: Color.fromARGB(255, 16, 221, 77),
            child: Row(
              children: [
                Text(
                  "Acepto Todo",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
            onPressed: () => {
              //Aqui por ejemplo podriamos guardar un registro de una Bd de firebase
              Navigator.pop(context)
            },
          )
        ]),
      ),
    );
  }
}
