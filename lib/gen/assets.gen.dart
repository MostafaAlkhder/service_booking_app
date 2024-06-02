/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsDataGen {
  const $AssetsDataGen();

  /// File path: assets/data/data.json
  String get data => 'assets/data/data.json';

  /// List of all assets
  List<String> get values => [data];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// Directory path: assets/images/carousel_slider
  $AssetsImagesCarouselSliderGen get carouselSlider =>
      const $AssetsImagesCarouselSliderGen();

  /// Directory path: assets/images/logo
  $AssetsImagesLogoGen get logo => const $AssetsImagesLogoGen();

  /// Directory path: assets/images/services
  $AssetsImagesServicesGen get services => const $AssetsImagesServicesGen();

  /// Directory path: assets/images/vendors
  $AssetsImagesVendorsGen get vendors => const $AssetsImagesVendorsGen();
}

class $AssetsImagesCarouselSliderGen {
  const $AssetsImagesCarouselSliderGen();

  /// File path: assets/images/carousel_slider/carousel_slider1.png
  AssetGenImage get carouselSlider1 =>
      const AssetGenImage('assets/images/carousel_slider/carousel_slider1.png');

  /// File path: assets/images/carousel_slider/carousel_slider2.png
  AssetGenImage get carouselSlider2 =>
      const AssetGenImage('assets/images/carousel_slider/carousel_slider2.png');

  /// File path: assets/images/carousel_slider/carousel_slider3.png
  AssetGenImage get carouselSlider3 =>
      const AssetGenImage('assets/images/carousel_slider/carousel_slider3.png');

  /// File path: assets/images/carousel_slider/carousel_slider4.png
  AssetGenImage get carouselSlider4 =>
      const AssetGenImage('assets/images/carousel_slider/carousel_slider4.png');

  /// File path: assets/images/carousel_slider/carousel_slider5.jpg
  AssetGenImage get carouselSlider5 =>
      const AssetGenImage('assets/images/carousel_slider/carousel_slider5.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [
        carouselSlider1,
        carouselSlider2,
        carouselSlider3,
        carouselSlider4,
        carouselSlider5
      ];
}

class $AssetsImagesLogoGen {
  const $AssetsImagesLogoGen();

  /// File path: assets/images/logo/logo.jpg
  AssetGenImage get logo => const AssetGenImage('assets/images/logo/logo.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [logo];
}

class $AssetsImagesServicesGen {
  const $AssetsImagesServicesGen();

  /// File path: assets/images/services/service1.webp
  AssetGenImage get service1 =>
      const AssetGenImage('assets/images/services/service1.webp');

  /// File path: assets/images/services/service10.webp
  AssetGenImage get service10 =>
      const AssetGenImage('assets/images/services/service10.webp');

  /// File path: assets/images/services/service11.png
  AssetGenImage get service11 =>
      const AssetGenImage('assets/images/services/service11.png');

  /// File path: assets/images/services/service12.jpg
  AssetGenImage get service12 =>
      const AssetGenImage('assets/images/services/service12.jpg');

  /// File path: assets/images/services/service2.jpg
  AssetGenImage get service2 =>
      const AssetGenImage('assets/images/services/service2.jpg');

  /// File path: assets/images/services/service3.jpg
  AssetGenImage get service3 =>
      const AssetGenImage('assets/images/services/service3.jpg');

  /// File path: assets/images/services/service4.jpg
  AssetGenImage get service4 =>
      const AssetGenImage('assets/images/services/service4.jpg');

  /// File path: assets/images/services/service5.webp
  AssetGenImage get service5 =>
      const AssetGenImage('assets/images/services/service5.webp');

  /// File path: assets/images/services/service6.jpg
  AssetGenImage get service6 =>
      const AssetGenImage('assets/images/services/service6.jpg');

  /// File path: assets/images/services/service7.webp
  AssetGenImage get service7 =>
      const AssetGenImage('assets/images/services/service7.webp');

  /// File path: assets/images/services/service8.jpg
  AssetGenImage get service8 =>
      const AssetGenImage('assets/images/services/service8.jpg');

  /// File path: assets/images/services/service9.jpg
  AssetGenImage get service9 =>
      const AssetGenImage('assets/images/services/service9.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [
        service1,
        service10,
        service11,
        service12,
        service2,
        service3,
        service4,
        service5,
        service6,
        service7,
        service8,
        service9
      ];
}

class $AssetsImagesVendorsGen {
  const $AssetsImagesVendorsGen();

  /// File path: assets/images/vendors/vendor1.jpg
  AssetGenImage get vendor1 =>
      const AssetGenImage('assets/images/vendors/vendor1.jpg');

  /// File path: assets/images/vendors/vendor2.jpg
  AssetGenImage get vendor2 =>
      const AssetGenImage('assets/images/vendors/vendor2.jpg');

  /// File path: assets/images/vendors/vendor3.jpg
  AssetGenImage get vendor3 =>
      const AssetGenImage('assets/images/vendors/vendor3.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [vendor1, vendor2, vendor3];
}

class Assets {
  Assets._();

  static const $AssetsDataGen data = $AssetsDataGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size = null});

  final String _assetName;

  final Size? size;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
