// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Cambiar por instancia de promociones

    final String? promo =
        ModalRoute.of(context)?.settings.arguments.toString() ?? 'no-promo';

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(),
          SliverList(
              delegate: SliverChildListDelegate([
            _logoYTitulo(),
          ]))
        ],
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget {
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
          color: Colors.black12,
          child: Text(
            'promo.title',
            style: TextStyle(fontSize: 20),
          ),
        ),
        background: FadeInImage(
          image: NetworkImage(
              'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcazaofertas.com.mx%2Fwp-content%2Fuploads%2F2014%2F10%2Fwendys_2x1_miercoles_gallery.jpg&f=1&nofb=1'),
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
                Text('promo.tienda',
                    style: textTheme.headline5,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2),
                Text('promo.title',
                    style: textTheme.subtitle1,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3),
                Row(
                  children: [
                    Icon(Icons.star_outline, size: 20, color: Colors.yellow),
                    SizedBox(width: 10),
                    Text(
                      'promo.voteAverage',
                      style: textTheme.caption,
                    )
                  ],
                )
              ],
            )
          ],
        ));
  }
}
