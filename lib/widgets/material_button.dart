import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MaterialButtonDesign extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final double? size;
  final Color? color1;
  final Color? color2;
  final bool? loading;
  final void Function() onTap;

  const MaterialButtonDesign({
    super.key,
    this.color1,
    this.color2,
    this.size,
    required this.height,
    required this.width,
    required this.text,
    required this.onTap,
    this.loading,
  });

  @override
  Widget build(BuildContext context) {
    return loading ?? false
        ? const Center(child: CircularProgressIndicator())
        : Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1 ?? const Color(0XFF1E3763),
            color2 ?? const Color(0XFF1E3763),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: MaterialButton(
        onPressed: onTap,
        height: height,
        minWidth: width,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            fontSize: size ?? 18.0.sp,
            color: Colors.white, // Text color
          ),
        ),
      ),
    );
  }
}
