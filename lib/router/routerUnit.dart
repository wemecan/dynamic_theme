import 'package:flutter/material.dart';

class RouterUnit {
  const RouterUnit({
    @required this.title,
    this.icon,
    this.subtitle,
    @required this.category,
    @required this.routeName,
    this.documentationUrl,
    @required this.buildRoute,
  })  : assert(title != null),
        assert(category != null),
        assert(routeName != null),
        assert(buildRoute != null);

  final String title;
  final IconData icon;
  final String subtitle;
  final RouterCategory category;
  final String routeName;
  final WidgetBuilder buildRoute;
  final String documentationUrl;

  @override
  String toString() {
    return '$runtimeType($title $routeName)';
  }
}

class RouterCategory {
  const RouterCategory._({
    @required this.name,
    @required this.icon,
  });

  final String name;
  final IconData icon;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) return true;
    if (runtimeType != other.runtimeType) return false;
    final RouterCategory typedOther = other;
    return typedOther.name == name && typedOther.icon == icon;
  }

  @override
  int get hashCode => hashValues(name, icon);

  @override
  String toString() {
    return '$runtimeType($name)';
  }
}

const RouterCategory kDemos = RouterCategory._(
  name: 'Studies',
  icon: Icons.arrow_back_ios,
);

//const RouterCategory _kStyle = RouterCategory._(
//  name: 'Style',
//  icon: GalleryIcons.custom_typography,
//);
//
//const RouterCategory _kMaterialComponents = RouterCategory._(
//  name: 'Material',
//  icon: GalleryIcons.category_mdc,
//);
//
//const RouterCategory _kCupertinoComponents = RouterCategory._(
//  name: 'Cupertino',
//  icon: GalleryIcons.phone_iphone,
//);
//
//const RouterCategory _kMedia = RouterCategory._(
//  name: 'Media',
//  icon: GalleryIcons.drive_video,
//);
