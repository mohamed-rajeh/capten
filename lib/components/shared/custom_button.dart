import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onTap;
  final Widget title;

  const CustomButton({
    super.key,
    required this.title,
    this.onTap,
    this.color,
    this.image,
    this.imageAlignment,
  });
  final Color? color;

  final Image? image;

  final Alignment? imageAlignment;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Material(
        color: color,
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(50),
        elevation: 4,
        shadowColor: Theme.of(context).colorScheme.shadow,
        child: InkWell(
            onTap: onTap,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: title,
                ),
                image != null
                    ? Align(
                        alignment: imageAlignment ?? Alignment.center,
                        child: image)
                    : const SizedBox.shrink(),
              ],
            )),
      ),
    );
  }
}
