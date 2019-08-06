import 'package:flutter/material.dart';
import 'package:extended_image/extended_image.dart';

class EthsyncExpandImage extends StatelessWidget {
  final String image, title;

  EthsyncExpandImage({this.image, this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: Navigator.of(context).pop,
        ),
        title: Text(
          title,
          style: TextStyle(
            color: Colors.blue,
            inherit: true,
            fontWeight: FontWeight.w300,
            fontStyle: FontStyle.italic,
            letterSpacing: 1.2,
          ),
        ),
        centerTitle: true,
      ),
      body: SizedBox.expand(
        // child: Hero(
        // tag: heroTag,
        child: ExtendedImageSlidePage(
          slideAxis: SlideAxis.both,
          slideType: SlideType.onlyImage,
          child: ExtendedImage(
            enableSlideOutPage: true,
            mode: ExtendedImageMode.Gesture,
            initGestureConfigHandler: (state) => GestureConfig(
              minScale: 1.0,
              animationMinScale: 0.8,
              maxScale: 3.0,
              animationMaxScale: 3.5,
              speed: 1.0,
              inertialSpeed: 100.0,
              initialScale: 1.0,
              inPageView: false,
            ),
            fit: BoxFit.scaleDown,
            // image: CachedNetworkImageProvider(
            image: AssetImage(
              image,
            ),
          ),
        ),
      ),
    );
  }
}
