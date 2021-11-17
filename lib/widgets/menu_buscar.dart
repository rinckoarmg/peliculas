import 'package:flutter/material.dart';

class MiCustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.indigo,
      expandedHeight: 100,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: EdgeInsets.all(0),
        title: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(width: 0),
          IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          Expanded(child: SizedBox()),
          Text('Logo'),
          Expanded(child: SizedBox()),
        ]),
        // title: Container(
        //   width: double.infinity,
        //   alignment: Alignment.bottomCenter,
        //   color: Colors.black12,
        //   child: Text(
        //     'logo',
        //     style: TextStyle(fontSize: 20),
        //   ),
        // ),
        // background: FadeInImage(
        //   image: NetworkImage(
        //       'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcazaofertas.com.mx%2Fwp-content%2Fuploads%2F2014%2F10%2Fwendys_2x1_miercoles_gallery.jpg&f=1&nofb=1'),
        //   placeholder: AssetImage('assets/loading.gif'),
        //   fit: BoxFit.cover,
        // ),
      ),
    );
  }
}
