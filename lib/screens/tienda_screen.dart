// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:played/widgets/productos_cards.dart';
import 'package:played/widgets/widgets.dart';

class TiendaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Cambiar por instancia de tiendaciones

    final String? tienda =
        ModalRoute.of(context)?.settings.arguments.toString() ?? 'no-tienda';

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(),
          SliverList(
              delegate: SliverChildListDelegate([
            _logoYTitulo(),
            // SizedBox(height: 10),
            _Descripcion(),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 20),
            //   child: Text('Descripción',
            //       style: TextStyle(fontSize: 20),
            //       overflow: TextOverflow.ellipsis,
            //       maxLines: 2),
            // ),
            SizedBox(height: 10),
            ProductosCards(),
          ]))
        ],
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  const _CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.indigo,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: EdgeInsets.all(0),
        title: Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.only(bottom: 10),
          color: Colors.black12,
          child: Text(
            'tienda.title',
            style: TextStyle(fontSize: 20),
          ),
        ),
        background: FadeInImage(
          image: NetworkImage('https://via.placeholder.com/500x300'),
          placeholder: AssetImage('assets/loading.gif'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _logoYTitulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
                placeholder: AssetImage('assets/jar-loading.gif'),
                image: NetworkImage('https://via.placeholder.com/200x150'),
                height: 150,
              ),
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('tienda.title',
                    style: textTheme.headline5,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2),
                Text('tienda.tipo',
                    style: textTheme.subtitle1,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3),
                Row(
                  children: [
                    Icon(Icons.star_outline, size: 20, color: Colors.yellow),
                    SizedBox(width: 10),
                    Text(
                      'tienda.voteAverage',
                      style: textTheme.caption,
                    )
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}

class _Descripcion extends StatelessWidget {
  const _Descripcion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Text(
        'Exercitation qui laborum officia non cillum excepteur dolore ullamco eu labore commodo officia anim cupidatat.',
        textAlign: TextAlign.justify,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}
