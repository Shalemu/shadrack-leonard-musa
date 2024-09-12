import 'package:mauzoApp/core/app_export.dart';
import 'package:flutter/material.dart';
//ignore: must_be_immutable
class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.height,
      this.width,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? height;

  double? width;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        constraints: BoxConstraints(
          minHeight: getSize(height ?? 0),
          minWidth: getSize(width ?? 0),
        ),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
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
      case IconButtonPadding.PaddingAll15:
        return getPadding(
          all: 15,
        );
      case IconButtonPadding.PaddingAll8:
        return getPadding(
          all: 8,
        );
      default:
        return getPadding(
          all: 12,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      case IconButtonVariant.Fillprimary:
        return ColorConstant.primary;
      case IconButtonVariant.FillTealA400:
        return ColorConstant.tealA400;
      case IconButtonVariant.FillIndigoA100:
        return ColorConstant.indigoA100;
      case IconButtonVariant.OutlineGray60005:
        return ColorConstant.whiteA700;
      case IconButtonVariant.FillGray902:
        return ColorConstant.gray902;
      case IconButtonVariant.FillBlueA200:
        return ColorConstant.blueA200;
      case IconButtonVariant.FillLightblue900:
        return ColorConstant.lightBlue900;
      case IconButtonVariant.Outlineprimary:
      case IconButtonVariant.OutlineGray101:
        return null;
      default:
        return ColorConstant.gray100;
    }
  }

  _setBorder() {
    switch (variant) {
      case IconButtonVariant.Outlineprimary:
        return Border.all(
          color: ColorConstant.primary,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case IconButtonVariant.OutlineGray101:
        return Border.all(
          color: ColorConstant.gray101,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case IconButtonVariant.FillGray100:
      case IconButtonVariant.FillWhiteA700:
      case IconButtonVariant.Fillprimary:
      case IconButtonVariant.FillTealA400:
      case IconButtonVariant.FillIndigoA100:
      case IconButtonVariant.OutlineGray60005:
      case IconButtonVariant.FillGray902:
      case IconButtonVariant.FillBlueA200:
      case IconButtonVariant.FillLightblue900:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.CircleBorder28:
        return BorderRadius.circular(
          getHorizontalSize(
            28.00,
          ),
        );
      case IconButtonShape.RoundedBorder8:
        return BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        );
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
      case IconButtonVariant.OutlineGray60005:
        return [
          BoxShadow(
            color: ColorConstant.gray60005,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          )
        ];
      case IconButtonVariant.FillGray100:
      case IconButtonVariant.Outlineprimary:
      case IconButtonVariant.OutlineGray101:
      case IconButtonVariant.FillWhiteA700:
      case IconButtonVariant.Fillprimary:
      case IconButtonVariant.FillTealA400:
      case IconButtonVariant.FillIndigoA100:
      case IconButtonVariant.FillGray902:
      case IconButtonVariant.FillBlueA200:
      case IconButtonVariant.FillLightblue900:
        return null;
      default:
        return null;
    }
  }
}

enum IconButtonShape {
  RoundedBorder12,
  CircleBorder28,
  RoundedBorder8,
}
enum IconButtonPadding {
  PaddingAll12,
  PaddingAll15,
  PaddingAll8,
}
enum IconButtonVariant {
  FillGray100,
  Outlineprimary,
  OutlineGray101,
  FillWhiteA700,
  Fillprimary,
  FillTealA400,
  FillIndigoA100,
  OutlineGray60005,
  FillGray902,
  FillBlueA200,
  FillLightblue900,
}
