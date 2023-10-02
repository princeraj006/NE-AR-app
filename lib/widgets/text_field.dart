import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class FormFieldContainer extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final Color borderColor;
  final Color boxColor;
  final Color textColor;
  final TextInputType? textInputType;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final void Function()? onTap;
  const FormFieldContainer(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.borderColor,
      required this.boxColor,
      required this.textColor,
      this.textInputType,
      this.onTap,
      required this.prefixIcon,
      required this.suffixIcon});

  @override
  State<FormFieldContainer> createState() => _FormFieldContainerState();
}

class _FormFieldContainerState extends State<FormFieldContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 1.h, horizontal: 3.w),
      height: 6.h,
      child: TextFormField(
        onTap: widget.onTap,
        controller: widget.controller,
        keyboardType: widget.textInputType ?? TextInputType.text,
        maxLines: 1,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 17.sp,
            color: widget.textColor,
            fontFamily: 'Rubik',
            fontWeight: FontWeight.w600,
            letterSpacing: 2.5),
        decoration: InputDecoration(
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.suffixIcon,
          contentPadding: EdgeInsets.symmetric(horizontal: 2.w),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: widget.borderColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: widget.borderColor),
          ),
          filled: true,
          hintText: widget.hintText,
          hintStyle: TextStyle(
              fontSize: 16.sp,
              fontFamily: 'Rubik',
              color: widget.textColor,
              fontWeight: FontWeight.w400,
              letterSpacing: 1.1),
          fillColor: widget.boxColor,
        ),
      ),
    );
  }
}
