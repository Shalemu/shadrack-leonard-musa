import 'package:mauzoApp/core/app_export.dart';
import 'package:flutter/material.dart';
//ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  
  CustomTextFormField(
      {this.shape,
      this.padding,
      this.keyboardType,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.isObscureText = false,
      this.textInputAction = TextInputAction.next,
      this.maxLines,
      this.readOnly,
      this.onFieldSubmitted,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.validator});

  TextFormFieldShape? shape;

  TextFormFieldPadding? padding;

  TextFormFieldVariant? variant;
  

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? isObscureText;

  TextInputAction? textInputAction;
  TextInputType? keyboardType;

  int? maxLines;

  String? hintText;

  Widget? prefix;
  bool?readOnly;

  BoxConstraints? prefixConstraints;

  Widget? suffix;
  void Function(String)? onFieldSubmitted;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(),
          )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return Container(
      width: getHorizontalSize(width ?? 0),
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        readOnly: readOnly??false,
       onFieldSubmitted: onFieldSubmitted,
        keyboardType: keyboardType,
        style:_setInputTextStyle(),
         
        obscureText: isObscureText!,
        // textInputAction: textInputAction,
        maxLines: maxLines ?? 1,
        decoration: _buildDecoration(),
        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.primary,
            width: 1.5,
          ),
        ),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case TextFormFieldFontStyle.NotoSansJPMedium14:
        return TextStyle(
          color: ColorConstant.bluegray301,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Noto Sans JP',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.NotoSansJPMedium12:
        return TextStyle(
          color: ColorConstant.bluegray301,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Noto Sans JP',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.NotoSansJPMedium12Gray902:
        return TextStyle(
          color: ColorConstant.bluegray301,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Noto Sans JP',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.NotoSansJPMedium14Gray902:
        return TextStyle(
          color: ColorConstant.bluegray301,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Noto Sans JP',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.NotoSansJPBold14:
        return TextStyle(
          color: ColorConstant.bluegray301,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Noto Sans JP',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.bluegray301,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Noto Sans JP',
          fontWeight: FontWeight.w400,
        );
    }
  }


  _setInputTextStyle() {
    switch (fontStyle) {
      case TextFormFieldFontStyle.NotoSansJPMedium14:
        
      case TextFormFieldFontStyle.NotoSansJPMedium12:
     
      case TextFormFieldFontStyle.NotoSansJPMedium12Gray902:
     
      case TextFormFieldFontStyle.NotoSansJPMedium14Gray902:
         return TextStyle(
          color: ColorConstant.gray902,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Noto Sans JP',
          fontWeight: FontWeight.w500,
        );
     
      case TextFormFieldFontStyle.NotoSansJPBold14:
       
      default:
        return TextStyle(
          color: ColorConstant.primary,
          fontSize: getFontSize(
            14,
          ),
            fontFamily: 'Noto Sans JP',
          fontWeight: FontWeight.w500,
          );
    }
  }



  _setOutlineBorderRadius() {
    switch (shape) {
      case TextFormFieldShape.CustomBorderTL16:
        return BorderRadius.only(
          topLeft: Radius.circular(
            getHorizontalSize(
              16.00,
            ),
          ),
          topRight: Radius.circular(
            getHorizontalSize(
              16.00,
            ),
          ),
          bottomLeft: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
          bottomRight: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            15.00,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case TextFormFieldVariant.Outlineprimary:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.primary,
            width: 1.5,
          ),
        );
      case TextFormFieldVariant.FillTeal900:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.FillWhiteA700:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.Outlineprimary_1:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.primary,
            width: 1,
          ),
        );
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case TextFormFieldVariant.FillTeal900:
        return ColorConstant.teal900;
      case TextFormFieldVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      default:
        return ColorConstant.gray100;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.Outlineprimary:
        return false;
      case TextFormFieldVariant.FillTeal900:
        return true;
      case TextFormFieldVariant.FillWhiteA700:
        return true;
      case TextFormFieldVariant.Outlineprimary_1:
        return false;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingAll10:
        return getPadding(
          all: 10,
        );
      case TextFormFieldPadding.PaddingAll19:
        return getPadding(
          all: 19,
        );
      case TextFormFieldPadding.PaddingAll13:
        return getPadding(
          all: 13,
        );
      default:
        return getPadding(
          all: 16,
        );
    }
  }
  
}

enum TextFormFieldShape {
  RoundedBorder15,
  CustomBorderTL16,
}
enum TextFormFieldPadding {
  PaddingAll16,
  PaddingAll10,
  PaddingAll19,
  PaddingAll13,
}
enum TextFormFieldVariant {
  FillGray100,
  Outlineprimary,
  FillTeal900,
  FillWhiteA700,
  Outlineprimary_1,
}
enum TextFormFieldFontStyle {
  NotoSansJPRegular14,
  NotoSansJPMedium14,
  NotoSansJPMedium12,
  NotoSansJPMedium12Gray902,
  NotoSansJPMedium14Gray902,
  NotoSansJPBold14,
}
