///
/// Author       : zhongaidong
/// Date         : 2022-03-22 17:48:23
/// Description  :
///

import 'package:flutter/material.dart';

class HeroAnimationPage02 extends StatelessWidget {
  const HeroAnimationPage02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hero跳转"),
      ),
      body: Center(
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 16 / 9,
          ),
          children: List.generate(20, (index) {
            final imageURL = "https://picsum.photos/500/500?random=$index";
            return GestureDetector(
              onTap: () => _jumpToImagePage(context, imageURL),
              child: Hero(
                tag: imageURL,
                child: Image.network(imageURL, fit: BoxFit.cover),
              ),
            );
          }),
        ),
      ),
    );
  }

  void _jumpToImagePage(BuildContext context, String imageURL) {
    Navigator.push(
      context,
      PageRouteBuilder(pageBuilder: (ctx, anim1, anim2) {
        return FadeTransition(
          opacity: anim1,
          child: ImageDetailPage(imageURL: imageURL),
        );
      }),
    );
  }
}

class ImageDetailPage extends StatelessWidget {
  const ImageDetailPage({
    Key? key,
    required this.imageURL,
  }) : super(key: key);

  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('原图')),
      backgroundColor: Colors.white,
      body: Center(
        child: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Hero(
            tag: imageURL,
            child: Image.network(imageURL),
          ),
        ),
      ),
    );
  }
}
