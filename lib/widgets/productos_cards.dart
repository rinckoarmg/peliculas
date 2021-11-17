// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProductosCards extends StatelessWidget {
  const ProductosCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.only(bottom: 30),
      width: 300,
      height: 510,
      //color: Colors.red,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.vertical,
        itemBuilder: (_, int index) => _Tarjeta(),
      ),
    );
  }
}

class _Tarjeta extends StatelessWidget {
  const _Tarjeta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      width: 110,
      height: 120,
      //color: Colors.green,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              placeholder: AssetImage('assets/no-image.png'),
              image: NetworkImage('https://via.placeholder.com/150x180'),
              height: 100,
              width: 120,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 12),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'producto.name',
              ),
              Text('producto.descripcion',
                  overflow: TextOverflow.ellipsis, maxLines: 3),
              Text(
                'producto.precio',
              ),
            ],
          ),
          SizedBox(width: 12),
          ElevatedButton(
            onPressed: () {},
            child: Text('Agregar'),
            // (Icons.add_box_rounded),
          ),
        ],
      ),
    );
  }
}
