import 'package:flutter/material.dart';
import 'package:played/widgets/widgets.dart';

class CategoriaScreen extends StatelessWidget {
  String _busqueda = '';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // Cambiar por instancia de categorias

    return Scaffold(
        appBar: AppBar(
            toolbarHeight: 110,
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                    Expanded(child: SizedBox()),
                    Text('Nombre App'),
                    // CircleAvatar(
                    //   radius: 22,
                    //   backgroundImage: AssetImage('assets/logo181fb.png'),
                    //   //backgroundColor: Colors.white,
                    // ),
                    Expanded(child: SizedBox()),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.shopping_cart_outlined)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      height: 40,
                      width: size.width * 0.77,
                      child: TextField(
                        enableInteractiveSelection: false,
                        autofocus: false,
                        //textCapitalization: TextCapitalization.characters,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2.0)),
                          hintStyle: TextStyle(color: Colors.white),
                          hintText: 'Buscar',

                          //labelText: 'Ingrese el correo',
                          suffixIcon: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          // border: OutlineInputBorder(
                          //     borderRadius: BorderRadius.circular(20.0), color: Colors.white),
                        ),
                        onSubmitted: (valor) {
                          _busqueda = valor;
                          print(_busqueda);
                        },
                      ),
                    ),
                  ],
                ),
              ],
            )),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TiendasSlider(),
            ],
          ),
        ));
  }
}
