import 'package:mauzoApp/core/app_export.dart';
import 'package:flutter/material.dart';

//ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.onTap,
      this.width,
      this.margin,
      this.prefixWidget,
      this.suffixWidget,
      this.text});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  VoidCallback? onTap;

  double? width;

  EdgeInsetsGeometry? margin;

  Widget? prefixWidget;

  Widget? suffixWidget;

  String? text;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: getHorizontalSize(width ?? 0),
        margin: margin,
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            prefixWidget ?? SizedBox(),
            Text(
              text ?? "",
              textAlign: TextAlign.center,
              style: _setFontStyle(),
            ),
            suffixWidget ?? SizedBox(),
          ],
        ),
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      boxShadow: _setBoxShadow(),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll13:
        return getPadding(
          all: 13,
        );
      case ButtonPadding.PaddingAll10:
        return getPadding(
          all: 10,
        );
      case ButtonPadding.PaddingAll6:
        return getPadding(
          all: 6,
        );
      default:
        return getPadding(
          all: 16,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillIndigo1004c:
        return ColorConstant.indigo1004c;
      case ButtonVariant.FillTeal900:
        return ColorConstant.teal900;
      case ButtonVariant.FillGray102:
        return ColorConstant.gray102;
      case ButtonVariant.OutlineGray9003d:
        return ColorConstant.gray902;
      case ButtonVariant.FillGray100:
        return ColorConstant.gray100;
      case ButtonVariant.Outlineprimary_1:
        return ColorConstant.whiteA700;
      case ButtonVariant.OutlineGray101:
        return ColorConstant.whiteA700;
      case ButtonVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      case ButtonVariant.OutlineGray90005:
        return ColorConstant.whiteA700;
      case ButtonVariant.OutlineGray6001e:
        return ColorConstant.whiteA700;
      case ButtonVariant.OutlineGreenA700:
        return ColorConstant.whiteA700;
      case ButtonVariant.OutlineGray6000a:
        return ColorConstant.whiteA700;
      case ButtonVariant.OutlineGray200:
      case ButtonVariant.OutlineTeal900:
      case ButtonVariant.Outlineprimary:
      case ButtonVariant.OutlineGreenA700_1:
        return null;
      default:
        return Colors
            .orange[300]; // Set the default return value to Colors.orange[400]
    }
  }

  _setBorder() {
    switch (variant) {
      case ButtonVariant.OutlineGray200:
        return Border.all(
          color: ColorConstant.gray200,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineTeal900:
        return Border.all(
          color: ColorConstant.teal900,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.Outlineprimary:
        return Border.all(
          color: ColorConstant.primary,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.Outlineprimary_1:
        return Border.all(
          color: ColorConstant.primary,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineGray101:
        return Border.all(
          color: ColorConstant.gray101,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineGreenA700:
        return Border.all(
          color: ColorConstant.greenA700,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineGreenA700_1:
        return Border.all(
          color: ColorConstant.greenA700,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.Fillprimary:
      case ButtonVariant.FillIndigo1004c:
      case ButtonVariant.FillGray102:
      case ButtonVariant.OutlineGray9003d:
      case ButtonVariant.FillGray100:
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.OutlineGray90005:
      case ButtonVariant.OutlineGray6001e:
      case ButtonVariant.OutlineGray6000a:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder16:
        return BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        );
      case ButtonShape.RoundedBorder8:
        return BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case ButtonVariant.OutlineGray9003d:
        return [
          BoxShadow(
            color: ColorConstant.gray9003d,
            spreadRadius: getHorizontalSize(
              0.00,
            ),
            blurRadius: getHorizontalSize(
              10.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          )
        ];
      case ButtonVariant.OutlineGray90005:
        return [
          BoxShadow(
            color: ColorConstant.gray90005,
            spreadRadius: getHorizontalSize(
              0.00,
            ),
            blurRadius: getHorizontalSize(
              110.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          )
        ];
      case ButtonVariant.OutlineGray6001e:
        return [
          BoxShadow(
            color: ColorConstant.gray6001e,
            spreadRadius: getHorizontalSize(
              0.00,
            ),
            blurRadius: getHorizontalSize(
              10.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          )
        ];
      case ButtonVariant.OutlineGray6000a:
        return [
          BoxShadow(
            color: ColorConstant.gray6000a,
            spreadRadius: getHorizontalSize(
              0.00,
            ),
            blurRadius: getHorizontalSize(
              10.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          )
        ];
      case ButtonVariant.Fillprimary:
      case ButtonVariant.OutlineGray200:
      case ButtonVariant.OutlineTeal900:
      case ButtonVariant.Outlineprimary:
      case ButtonVariant.FillIndigo1004c:
      case ButtonVariant.FillGray102:
      case ButtonVariant.FillGray100:
      case ButtonVariant.Outlineprimary_1:
      case ButtonVariant.OutlineGray101:
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.OutlineGreenA700:
      case ButtonVariant.OutlineGreenA700_1:
        return null;
      default:
        return null;
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.NotoSansJPRegular14:
        return TextStyle(
          color: ColorConstant.gray902,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Noto Sans JP',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.NotoSansJPBold12:
        return TextStyle(
          color: ColorConstant.teal900,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Noto Sans JP',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.NotoSansJPBold12WhiteA700:
        return TextStyle(
          color: ColorConstant.gray902,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Noto Sans JP',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.NotoSansJPRegular14primary:
        return TextStyle(
          color: ColorConstant.primary,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Noto Sans JP',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.NotoSansJPMedium12:
        return TextStyle(
          color: ColorConstant.primary,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Noto Sans JP',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.NotoSansJPRegular12:
        return TextStyle(
          color: ColorConstant.gray100,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Noto Sans JP',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.NotoSansJPBold12primary:
        return TextStyle(
          color: ColorConstant.primary,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Noto Sans JP',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.NotoSansJPRegular12Bluegray301:
        return TextStyle(
          color: ColorConstant.bluegray301,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Noto Sans JP',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.NotoSansJPRegular12primary:
        return TextStyle(
          color: ColorConstant.primary,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Noto Sans JP',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.NotoSansJPBold14primary:
        return TextStyle(
          color: ColorConstant.primary,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Noto Sans JP',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.NotoSansJPBold14Gray902:
        return TextStyle(
          color: ColorConstant.gray902,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Noto Sans JP',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.NotoSansJPMedium14:
        return TextStyle(
          color: ColorConstant.gray902,
       
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Noto Sans JP',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.NotoSansJPMedium12Gray902:
        return TextStyle(
          color: ColorConstant.gray902,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Noto Sans JP',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.NotoSansJPMedium12WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Noto Sans JP',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.NotoSansJPMedium10:
        return TextStyle(
          color: ColorConstant.gray902,
          fontSize: getFontSize(
            10,
          ),
          fontFamily: 'Noto Sans JP',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.NotoSansJPMedium10GreenA700:
        return TextStyle(
          color: ColorConstant.greenA700,
          fontSize: getFontSize(
            10,
          ),
          fontFamily: 'Noto Sans JP',
          fontWeight: FontWeight.w500,
        );
      default:
        return TextStyle(
         color: ColorConstant.gray902,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Noto Sans JP',
          fontWeight: FontWeight.w700,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder16,
  RoundedBorder12,
  RoundedBorder8,
}

enum ButtonPadding {
  PaddingAll16,
  PaddingAll13,
  PaddingAll10,
  PaddingAll6,
}

enum ButtonVariant {
  Fillprimary,
  OutlineGray200,
  OutlineTeal900,
  Outlineprimary,
  FillIndigo1004c,
  FillGray102,
  OutlineGray9003d,
  FillGray100,
  FillTeal900,
  Outlineprimary_1,
  OutlineGray101,
  FillWhiteA700,
  OutlineGray90005,
  OutlineGray6001e,
  OutlineGreenA700,
  OutlineGreenA700_1,
  OutlineGray6000a,
}

enum ButtonFontStyle {
  NotoSansJPBold14,
  NotoSansJPRegular14,
  NotoSansJPBold12,
  NotoSansJPBold12WhiteA700,
  NotoSansJPRegular14primary,
  NotoSansJPMedium12,
  NotoSansJPRegular12,
  NotoSansJPBold12primary,
  NotoSansJPRegular12Bluegray301,
  NotoSansJPRegular12primary,
  NotoSansJPBold14primary,
  NotoSansJPBold14Gray902,
  NotoSansJPMedium14,
  NotoSansJPMedium12Gray902,
  NotoSansJPMedium12WhiteA700,
  NotoSansJPMedium10,
  NotoSansJPMedium10GreenA700,
}
