import 'package:flutter/material.dart';


class CarServiceAppBar extends StatelessWidget implements PreferredSizeWidget {

  final Widget? title;
  final List<Widget>? actions;
  final Color? gradientStart;
  final Color? gradientEnd;
  final LinearGradient gradient;
  final IconButton? leading;
  final double? toolbarHeight;
  const CarServiceAppBar({
    required this.gradient,
    this.title,
    this.actions,
    this.gradientStart,
    this.gradientEnd,
    super.key,
    this.leading,
    this.toolbarHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: gradient,
      ),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: title,
        actions: actions,
        // centerTitle: true,
        leading: leading,
      ),
    );
  }

  @override
  Size get preferredSize =>  Size.fromHeight(toolbarHeight!);
}
