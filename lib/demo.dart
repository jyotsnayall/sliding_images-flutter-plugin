library sliding_images;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';

class SlidingImages extends StatefulWidget {
  final double? imageWidth;
  final double? imageHeight;
  final List<String> imgUrls;
  final EdgeInsetsGeometry? padding;
  final Border? border;
  final Duration autoPlayInterval;
  final Widget? customIndicator;
  final int initialPage;
  final bool enableAutoPlay;
  final bool infiniteScroll;
  final Curve animationCurve;
  final double activeSlideScale;
  final double nonActiveSlideScale;

  const SlidingImages({
    Key? key,
    this.imageWidth,
    this.imageHeight,
    required this.imgUrls,
    this.padding,
    this.border,
    this.autoPlayInterval = const Duration(seconds: 5),
    this.customIndicator,
    this.initialPage = 0,
    this.enableAutoPlay = true,
    this.infiniteScroll = true,
    this.animationCurve = Curves.easeInOut,
    this.activeSlideScale = 1.0,
    this.nonActiveSlideScale = 0.8,
  }) : super(key: key);

  @override
  State<SlidingImages> createState() => _SlidingImagesState();
}

class _SlidingImagesState extends State<SlidingImages> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider.builder(
        itemCount: widget.imgUrls.length,
        itemBuilder: (context, index, pageViewIndex) {
          return Container(
            width: widget.imageWidth ?? 300,
            height: widget.imageHeight ?? 300,
            padding: widget.padding ?? EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              border: widget.border,
            ),
            child: Image.network(
              widget.imgUrls.elementAt(index),
              fit: BoxFit.cover,
            ),
          );
        },
        options: CarouselOptions(
          autoPlay: widget.enableAutoPlay,
          autoPlayInterval: widget.autoPlayInterval,
          enlargeCenterPage: true,
          initialPage: widget.initialPage,
          enableInfiniteScroll: widget.infiniteScroll,
          scrollDirection: Axis.horizontal,
          scrollPhysics: ClampingScrollPhysics(),
          pageSnapping: true,
          reverse: false,
          pauseAutoPlayOnTouch: true,
          autoPlayCurve: widget.animationCurve,
          disableCenter: false,
        ),
      ),
    );
  }
}
