import 'package:flutter/material.dart';
void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}
class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,

        child: InteractiveViewer(
          //this is used for darging the image around
         boundaryMargin: const EdgeInsets.all(double.infinity),
          // this is used for mimimizing the image
          // note we can't use the minscale without the boundarymargin
          minScale: 0.1,
          // this is used for max zoomimg the image
          maxScale: 19,


          child: Image.network("https://free4kwallpapers.com/uploads/originals/2019/04/17/retina-ultra-wallpaper.jpg",fit: BoxFit.fill,),
        ),
      ),

    );
  }
}


