import 'package:flutter/material.dart';

class ColorConstants{
  static const Color primaryColor = Color(0xFF7D49F8);
  static const Color primaryColor1 = Color(0xFF976DF9);
  static const Color primaryColor2 = Color(0xFFB192FB);
  static const Color primaryColor3 = Color(0xFFCBB6FC);
  static const Color primaryColor4 = Color(0xFFE5DBFE);

  static const Color secondaryColor = Color(0xFF0E213D);
  static const Color secondaryColor1 = Color(0xFF183053);
  static const Color secondaryColor2 = Color(0xFF2A3E5D);
  static const Color secondaryColor3 = Color(0xFF435670);
  static const Color secondaryColor4 = Color(0xFF64758B);

  static const Color subColor = Color(0xFFFFD600);
  static const Color subColor1 = Color(0xFFFFDE33);
  static const Color subColor2 = Color(0xFFFFE666);
  static const Color subColor3 = Color(0xFFFFEF99);
  static const Color subColor4 = Color(0xFFFFF7CC);

  static const Color black = Color(0xFF000000);
  static const Color black0 = Color(0xFF272623);
  static const Color black1 = Color(0xFF333333);
  static const Color black11 = Color(0xFF363636);
  static const Color black111 = Color(0xFF4F575E);
  static const Color black2 = Color(0xFF666666);
  static const Color black22 = Color(0xFF949494);
  static const Color black3 = Color(0xFF999999);
  static const Color black4 = Color(0xFFCCCCCC);

  static const Color white = Color(0xFFFFFFFF);
  static const Color white1 = Color(0xFF8B8B8B);
  static const Color white2 = Color(0xFFC8C8C8);
  static const Color white3 = Color(0xFFF2F2F2);
  static const Color white4 = Color(0xFFFAFAFA);
  static const Color whiteShadowColor = Color(0xFF898A8B);

  static const Color success = Color(0xFF2F7D31);
  static const Color success1 = Color(0xFF59975A);
  static const Color success2 = Color(0xFF82B183);
  static const Color success3 = Color(0xFFACCBAD);
  static const Color success4 = Color(0xFFD5E5D6);
  static const Color successBackground = Color(0xFFEDF7ED);

  static const Color information = Color(0xFF0088D1);
  static const Color information0 = Color(0xFF1874DA);
  static const Color information1 = Color(0xFF33A0DA);
  static const Color information2 = Color(0xFF66B8E3);
  static const Color information3 = Color(0xFF99CFED);
  static const Color information4 = Color(0xFFCCE7F6);
  static const Color informationBackground = Color(0xFFE5F6FD);

  static const Color warning = Color(0xFFED6D03);
  static const Color warning1 = Color(0xFFF18A35);
  static const Color warning2 = Color(0xFFF4A768);
  static const Color warning3 = Color(0xFFF8C59A);
  static const Color warning4 = Color(0xFFFBE2CD);
  static const Color warningBackground = Color(0xFFFFF4E5);

  static const Color alert = Color(0xFFD3302F);
  static const Color alert1 = Color(0xFFDC5959);
  static const Color alert2 = Color(0xFFE58382);
  static const Color alert3 = Color(0xFFEDACAC);
  static const Color alert4 = Color(0xFFF6D6D5);
  static const Color alertBackground = Color(0xFFFDEDED);
  static const Color transparent = Colors.transparent;

}

/// for Text
class TextStyleTypography{
  static String? fontFamily="Inter-Regular";
  static FontStyle headerFontStyle=FontStyle.normal;
  static const Color headerColor = Color(0xFF000000);


  static FontStyle NTypoFontStyle=FontStyle.normal;
  static Color NTypoColor= Color(0XFF000000);


  static FontStyle MTypoFontStyle=FontStyle.normal;
  static Color MTypoColor= Color(0XFF000000);

  static FontStyle SBTypoFontStyle=FontStyle.normal;
  static Color SBTypoColor= Color(0XFF000000);

  static FontStyle BTypoFontStyle=FontStyle.normal;
  static Color BTypoColor= Color(0XFF000000);
  //static Color BTypoColor= Color.fromRGBO(126, 128, 140, 1);


  static TextStyle heading12 = TextStyle(
    fontFamily: fontFamily,
    fontStyle: headerFontStyle,
    fontWeight: FontWeight.w700,
    fontSize: 12,
    color: headerColor,
  );
  static TextStyle heading14 = TextStyle(
    fontFamily: fontFamily,
    fontStyle: headerFontStyle,
    fontWeight: FontWeight.w700,
    fontSize: 14,
    color: headerColor,
  );
  static TextStyle heading16 = TextStyle(
    fontFamily: fontFamily,
    fontStyle: headerFontStyle,
    fontWeight: FontWeight.w700,
    fontSize: 16,
    color: headerColor,
  );
  static TextStyle heading18 = TextStyle(
    fontFamily: fontFamily,
    fontStyle: headerFontStyle,
    fontWeight: FontWeight.w700,
    fontSize: 18.72,
    color: headerColor,
  );
  static TextStyle heading20 = TextStyle(
    fontFamily: fontFamily,
    fontStyle: headerFontStyle,
    fontWeight: FontWeight.w700,
    fontSize: 20,
    color: headerColor,
  );
  static TextStyle heading24 = TextStyle(
    fontFamily: fontFamily,
    fontStyle: headerFontStyle,
    fontWeight: FontWeight.w700,
    fontSize: 24,
    color: headerColor,
  );


  static TextStyle typoNormalStyle12 = TextStyle(
    fontFamily: fontFamily,
    fontStyle: NTypoFontStyle,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: NTypoColor,
  );
  static TextStyle typoNormalStyle14 = TextStyle(
    fontFamily: fontFamily,
    fontStyle: NTypoFontStyle,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: NTypoColor,
  );
  static TextStyle typoNormalStyle16 = TextStyle(
    fontFamily: fontFamily,
    fontStyle: NTypoFontStyle,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: NTypoColor,
  );
  static TextStyle typoNormalStyle18 = TextStyle(
    fontFamily: fontFamily,
    fontStyle: NTypoFontStyle,
    fontWeight: FontWeight.w400,
    fontSize: 18,
    color: NTypoColor,
  );
  static TextStyle typoNormalStyle20 = TextStyle(
    fontFamily: fontFamily,
    fontStyle: NTypoFontStyle,
    fontWeight: FontWeight.w400,
    fontSize: 20,
    color: NTypoColor,
  );
  static TextStyle typoNormalStyle24 = TextStyle(
    fontFamily: fontFamily,
    fontStyle: NTypoFontStyle,
    fontWeight: FontWeight.w400,
    fontSize: 24,
    color: NTypoColor,
  );
  static TextStyle typoNormalStyle30 = TextStyle(
    fontFamily: fontFamily,
    fontStyle: NTypoFontStyle,
    fontWeight: FontWeight.w400,
    fontSize: 30,
    color: NTypoColor,
  );
  static TextStyle typoNormalStyle36 = TextStyle(
    fontFamily: fontFamily,
    fontStyle: NTypoFontStyle,
    fontWeight: FontWeight.w400,
    fontSize: 36,
    color: NTypoColor,
  );
  static TextStyle typoNormalStyle48 = TextStyle(
    fontFamily: fontFamily,
    fontStyle: NTypoFontStyle,
    fontWeight: FontWeight.w400,
    fontSize: 48,
    color: NTypoColor,
  );

  static TextStyle typoMediumStyle12 = TextStyle(
    fontFamily: fontFamily,
    fontStyle: MTypoFontStyle,
    fontWeight: FontWeight.w500,
    fontSize: 12,
    color: MTypoColor,
  );
  static TextStyle typoMediumStyle14 = TextStyle(
    fontFamily: fontFamily,
    fontStyle: MTypoFontStyle,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: MTypoColor,
  );
  static TextStyle typoMediumStyle16 = TextStyle(
    fontFamily: fontFamily,
    fontStyle: MTypoFontStyle,
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: MTypoColor,
  );
  static TextStyle typoMediumStyle18 = TextStyle(
    fontFamily: fontFamily,
    fontStyle: MTypoFontStyle,
    fontWeight: FontWeight.w500,
    fontSize: 18,
    color: MTypoColor,
  );
  static TextStyle typoMediumStyle20 = TextStyle(
    fontFamily: fontFamily,
    fontStyle: MTypoFontStyle,
    fontWeight: FontWeight.w500,
    fontSize: 20,
    color: MTypoColor,
  );
  static TextStyle typoMediumStyle24 = TextStyle(
    fontFamily: fontFamily,
    fontStyle: MTypoFontStyle,
    fontWeight: FontWeight.w500,
    fontSize: 24,
    color: MTypoColor,
  );
  static TextStyle typoMediumStyle30 = TextStyle(
    fontFamily: fontFamily,
    fontStyle: MTypoFontStyle,
    fontWeight: FontWeight.w500,
    fontSize: 30,
    color: MTypoColor,
  );
  static TextStyle typoMediumStyle36 = TextStyle(
    fontFamily: fontFamily,
    fontStyle: MTypoFontStyle,
    fontWeight: FontWeight.w500,
    fontSize: 36,
    color: MTypoColor,
  );
  static TextStyle typoMediumStyle48 = TextStyle(
    fontFamily: fontFamily,
    fontStyle: MTypoFontStyle,
    fontWeight: FontWeight.w500,
    fontSize: 48,
    color: MTypoColor,
  );


  static TextStyle typoSemiBoldStyle12 = TextStyle(
    fontFamily: fontFamily,
    fontStyle: SBTypoFontStyle,
    fontWeight: FontWeight.w600,
    fontSize: 12,
    color: SBTypoColor,
  );
  static TextStyle typoSemiBoldStyle14 = TextStyle(
    fontFamily: fontFamily,
    fontStyle: SBTypoFontStyle,
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: SBTypoColor,
  );
  static TextStyle typoSemiBoldStyle16 = TextStyle(
    fontFamily: fontFamily,
    fontStyle: SBTypoFontStyle,
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: SBTypoColor,
  );
  static TextStyle typoSemiBoldStyle18 = TextStyle(
    fontFamily: fontFamily,
    fontStyle: SBTypoFontStyle,
    fontWeight: FontWeight.w600,
    fontSize: 18,
    color: SBTypoColor,
  );
  static TextStyle typoSemiBoldStyle20 = TextStyle(
    fontFamily: fontFamily,
    fontStyle: SBTypoFontStyle,
    fontWeight: FontWeight.w600,
    fontSize: 20,
    color: SBTypoColor,
  );
  static TextStyle typoSemiBoldStyle24 = TextStyle(
    fontFamily: fontFamily,
    fontStyle: SBTypoFontStyle,
    fontWeight: FontWeight.w600,
    fontSize: 24,
    color: SBTypoColor,
  );
  static TextStyle typoSemiBoldStyle30 = TextStyle(
    fontFamily: fontFamily,
    fontStyle: SBTypoFontStyle,
    fontWeight: FontWeight.w600,
    fontSize: 30,
    color: SBTypoColor,
  );
  static TextStyle typoSemiBoldStyle36 = TextStyle(
    fontFamily: fontFamily,
    fontStyle: SBTypoFontStyle,
    fontWeight: FontWeight.w600,
    fontSize: 36,
    color: SBTypoColor,
  );
  static TextStyle typoSemiBoldStyle48 = TextStyle(
    fontFamily: fontFamily,
    fontStyle: SBTypoFontStyle,
    fontWeight: FontWeight.w600,
    fontSize: 48,
    color: SBTypoColor,
  );


  static TextStyle typoBoldStyle12 = TextStyle(
    fontFamily: fontFamily,
    fontStyle: BTypoFontStyle,
    fontWeight: FontWeight.w700,
    fontSize: 12,
    color: BTypoColor,
  );
  static TextStyle typoBoldStyle14 = TextStyle(
    fontFamily: fontFamily,
    fontStyle: BTypoFontStyle,
    fontWeight: FontWeight.w700,
    fontSize: 14,
    color: BTypoColor,
  );
  static TextStyle typoBoldStyle16 = TextStyle(
    fontFamily: fontFamily,
    fontStyle: BTypoFontStyle,
    fontWeight: FontWeight.w700,
    fontSize: 16,
    color: BTypoColor,
  );
  static TextStyle typoBoldStyle18 = TextStyle(
    fontFamily: fontFamily,
    fontStyle: BTypoFontStyle,
    fontWeight: FontWeight.w700,
    fontSize: 18,
    color: BTypoColor,
  );
  static TextStyle typoBoldStyle20 = TextStyle(
    fontFamily: fontFamily,
    fontStyle: BTypoFontStyle,
    fontWeight: FontWeight.w700,
    fontSize: 20,
    color: BTypoColor,
  );
  static TextStyle typoBoldStyle24 = TextStyle(
    fontFamily: fontFamily,
    fontStyle: BTypoFontStyle,
    fontWeight: FontWeight.w700,
    fontSize: 24,
    color: BTypoColor,
  );
  static TextStyle typoBoldStyle30 = TextStyle(
    fontFamily: fontFamily,
    fontStyle: BTypoFontStyle,
    fontWeight: FontWeight.w700,
    fontSize: 30,
    color: BTypoColor,
  );
  static TextStyle typoBoldStyle36 = TextStyle(
    fontFamily: fontFamily,
    fontStyle: BTypoFontStyle,
    fontWeight: FontWeight.w700,
    fontSize: 36,
    color: BTypoColor,
  );
  static TextStyle typoBoldStyle48 = TextStyle(
    fontFamily: fontFamily,
    fontStyle: BTypoFontStyle,
    fontWeight: FontWeight.w700,
    fontSize: 48,
    color: BTypoColor,
  );
}

class ButtonConstants{
  static const bool isLoading = false;
  static const double height = 48;
  static const  Color backgroundColor = ColorConstants.primaryColor;
  static const Color foregroundColor = ColorConstants.white;
  static const Color pressedBackgroundColor = ColorConstants.primaryColor;
  static const Color hoveredBackgroundColor = ColorConstants.primaryColor1;
  static const Color disabledBackgroundColor = ColorConstants.white3;
  static const Color disabledForegroundColor = ColorConstants.white;
  static const Color focusedBorderColor = ColorConstants.primaryColor2;
  static const Color shadowColor =ColorConstants.primaryColor;// Color(0x8C7D49F8);
  static const double elevation = 0;
  static const double hoveredElevation = 0;
  static const double borderRadius = 8;
  static const double borderWidth = 2;
}