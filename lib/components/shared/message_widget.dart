import 'package:capten/components/constants/app_them.dart';
import 'package:flutter/material.dart';
 

class MessageWidget extends StatelessWidget {
  const MessageWidget({
    super.key,
    required this.data,
    this.radius,
    this.color,
  });
  final String data;
  final double? radius;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: color ?? Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(radius ?? 0)),
      alignment: Alignment.center,
      height: 40,
      child: Text(
        data,
        style: TextStyle(color: AppThem.white),
      ),
    );
  }
}
