import 'dart:math';

import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

class CustomIcon extends StatelessWidget {
  final double size;
  final double padding;
  final IconData? iconData;
  final String? iconPath;
  final String? iconUrl;
  final double? radius;
  final Color? background;
  final Color? color;

  const CustomIcon({
    Key? key,
    this.iconData,
    this.iconPath,
    this.iconUrl,
    this.radius,
    this.color,
    this.background,
    this.size = 24,
    this.padding = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget icon = const SizedBox();

    if (iconData != null) {
      icon = _buildIconData(context);
    }
    if (iconPath != null) {
      icon = _buildIconPicture(context);
    }
    if (iconUrl != null) {
      icon = _buildIconPicture(context);
    }

    return Container(
      width: size,
      height: size,
      clipBehavior: Clip.hardEdge,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(
          radius ?? size,
        ),
      ),
      child: icon,
    );
  }

  Widget _buildIconData(BuildContext context) {
    return Icon(
      iconData,
      color: color,
      size: _size,
    );
  }

  Widget _buildIconPicture(BuildContext context) {
    ImageProvider image = const AssetImage('');

    if (iconPath != null) {
      image = AssetImage(
        iconPath ?? '',
      );
    }
    if (iconUrl != null) {
      image = NetworkImage(
        iconUrl ?? '',
      );
    }

    return Image(
      image: image,
      color: color,
      width: _size,
      height: _size,
      errorBuilder: (_, __, ___) {
        return Container(
          width: _size,
          height: _size,
          color: context.surfaceColor,
        );
      },
    );
  }

  double get _size {
    return max(size - padding * 2, 0);
  }
}
