# sliding_images

`SlidingImages` Flutter widget creates image sliders with customizable properties such as image dimensions, padding, auto-play, custom indicators, and more..

![demo](/demo.gif)

## Features

 - Image carousel with URL support.
 - Customizable image dimensions and padding.
 - Set the initial displayed image index.
 - Auto-play with interval.
 - Apply border to images.
 - Navigation indicator.
 - Animation curve customization.
 - Scaling for active and non-active images.

## Getting started

To use this package, add sliding_images as a dependency in your pubspec.yaml file.

## Usage

Minimal example:

```dart
SlidingImages(
  imgUrls: ["https://p1.pxfuel.com/preview/321/155/730/alpine-bavaria-flowers-germany.jpg",
            "https://p1.pxfuel.com/preview/818/670/574/dogs-chihuahua-rest-small-fur-cozy.jpg",
            "https://p0.pxfuel.com/preview/961/674/322/podcast-coffee-chocolate-cup.jpg",
            ],
)

```

Custom settings:

```dart
    SlidingImages(
      imgUrls: ["https://p1.pxfuel.com/preview/321/155/730/alpine-bavaria-flowers-germany.jpg",
                "https://p1.pxfuel.com/preview/818/670/574/dogs-chihuahua-rest-small-fur-cozy.jpg",
                "https://p0.pxfuel.com/preview/961/674/322/podcast-coffee-chocolate-cup.jpg",
                ],
      imageWidth: 300,
      imageHeight: 200,
      padding: EdgeInsets.all(8.0),
      border: Border.all(color: Colors.grey, width: 1.0),
      autoPlayInterval: Duration(seconds: 3),
      customIndicator: CustomIndicator(),
      initialPage: 2,
      enableAutoPlay: true,
      infiniteScroll: true,
      animationCurve: Curves.easeInOut,
      activeSlideScale: 1.2,
      nonActiveSlideScale: 0.9,
    )
```

## See also

 - [github repo](https://github.com/jyotsnayall/sliding_images-flutter-plugin)
 - [pub.dev package](https://pub.dev/packages/sliding_images)
