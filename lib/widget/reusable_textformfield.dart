import 'package:flutter/material.dart';

import '../themes/color.dart';

class ReusableTextForm extends StatelessWidget {
  final String? Function(String?)? validator;
  final VoidCallback? Function(String?)? onChange;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? hintText;
  final bool? obscureText;
  final bool? enabled;
  final Widget? suffixIcon;
  final Color? filledColor;
  final Color? borderColor;
  final Widget? prefixIcon;
  final String? labelText;
  final double? borderRadius;
  final int maxLines;
  final Color? inputTextColor;
  final Color? labelTextColor;
  final TextCapitalization textCapitalization;

  const ReusableTextForm({
    Key? key,
    this.validator,
    this.controller,
    this.keyboardType,
    this.hintText,
    this.suffixIcon,
    this.obscureText = false,
    this.enabled = true,
    this.prefixIcon,
    this.filledColor = AppColor.lightGreyColor,
    this.maxLines = 1,
    this.onChange,
    this.textCapitalization = TextCapitalization.sentences,
    this.borderColor = AppColor.transparentColor,
    this.labelText,
    this.borderRadius,
    this.inputTextColor,
    this.labelTextColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        style: TextStyle(color: inputTextColor),
        textCapitalization: textCapitalization,
        onChanged: onChange,
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText!,
        maxLines: maxLines,
        decoration: InputDecoration(
          labelStyle: TextStyle(color: labelTextColor),
          filled: true,
          labelText: labelText,
          fillColor: filledColor,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          enabled: enabled!,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey.shade400),
          contentPadding: const EdgeInsets.all(10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 8),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 8),
            borderSide: BorderSide(color: borderColor!, width: 1),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 8),
            borderSide: const BorderSide(color: Colors.red, width: 1),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 8),
            borderSide: const BorderSide(color: Colors.red, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 8),
            borderSide: const BorderSide(color: AppColor.deepPurple, width: 1),
          ),
        ),
        // validations
        validator: validator);
  }
}
