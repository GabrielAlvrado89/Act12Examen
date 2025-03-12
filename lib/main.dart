import 'package:flutter/material.dart';

class Marcas {
  final int id_marcas;
  final int id_sucursal;
  final int id_producto;
  final String NombreMarca;
  final String Numtelefono;
  final String correo;
  Marcas({
    required this.id_marcas,
    required this.id_sucursal,
    required this.id_producto,
    required this.NombreMarca,
    required this.Numtelefono,
    required this.correo,
  });
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Angel Gabriel Alvarado  Mat: 1127"),
          centerTitle: true,
          backgroundColor: Colors.blue,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 18),
        ),
        body: ListaMarcas(),
      ),
    );
  }
}

class ListaMarcas extends StatelessWidget {
  final List<Map<String, dynamic>> marcasData = [
    {
      'id_marcas': 1,
      'id_sucursal': 101,
      'id_producto': 1001,
      'NombreMarca': 'Nike',
      'Numtelefono': '123-456-7890',
      'correo': 'nike@gmail.com'
    },
    {
      'id_marcas': 2,
      'id_sucursal': 102,
      'id_producto': 1002,
      'NombreMarca': 'Adidas',
      'Numtelefono': '987-654-3210',
      'correo': 'adidas@gmail.com'
    },
    {
      'id_marcas': 3,
      'id_sucursal': 103,
      'id_producto': 1003,
      'NombreMarca': 'Puma',
      'Numtelefono': '555-123-4567',
      'correo': 'puma@gmail.com'
    },
    {
      'id_marcas': 4,
      'id_sucursal': 104,
      'id_producto': 1004,
      'NombreMarca': 'Reebok',
      'Numtelefono': '111-222-3333',
      'correo': 'reebok@gmail.com'
    },
    {
      'id_marcas': 5,
      'id_sucursal': 105,
      'id_producto': 1005,
      'NombreMarca': 'Under Armour',
      'Numtelefono': '444-555-6666',
      'correo': 'ua@gmail.com'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Marcas",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20), // Espacio entre el subtítulo y los contenedores
          ...marcasData.map((marcaData) {
            Marcas marca = Marcas(
              id_marcas: marcaData['id_marcas'],
              id_sucursal: marcaData['id_sucursal'],
              id_producto: marcaData['id_producto'],
              NombreMarca: marcaData['NombreMarca'],
              Numtelefono: marcaData['Numtelefono'],
              correo: marcaData['correo'],
            );

            return Container(
              width: 300,
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors
                    .primaries[
                        marcasData.indexOf(marcaData) % Colors.primaries.length]
                    .shade100,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nombre Marca: ${marca.NombreMarca}'),
                  Text('Número de Teléfono: ${marca.Numtelefono}'),
                  Text('Correo: ${marca.correo}'),
                ],
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}
