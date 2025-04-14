import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCachedImage extends StatelessWidget {
  final String mediaUrl;
  final double width;
  final double height;
  final BoxFit fit;
  const CustomCachedImage(
      {super.key,
      required this.mediaUrl,
      this.width = 70.0,
      this.height = 70.0,
      this.fit = BoxFit.cover});

  @override
  Widget build(BuildContext context) {
    if (mediaUrl.trim().toLowerCase().endsWith('.svg')) {
      return SvgPicture.network(
        mediaUrl,
        width: width,
        height: height,
        fit: fit,
        allowDrawingOutsideViewBox: true,
        placeholderBuilder: (BuildContext context) => const Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      return CachedNetworkImage(
        fit: fit,
        imageUrl: mediaUrl,
        width: width,
        height: height,
        imageBuilder: (context, imageProvider) => Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            image: DecorationImage(image: imageProvider, fit: fit),
          ),
        ),
        placeholder: (context, url) => const Center(
          child: CupertinoActivityIndicator(),
        ),
        errorWidget: (context, url, error) => const Center(
          child: Icon(Icons.error),
        ),
      );
    }
  }
}
