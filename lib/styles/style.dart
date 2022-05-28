import 'package:flutter/material.dart';

abstract class Styles {
  // white
  static const Color sWhite = Color(0xFFFFFFFF);

  // blues
  static const Color sBlue = Color(0xFF6ECACD);
  static const Color sTextBlue = Color(0xFF0B92E8);
  static const Color sBgBlue1 = Color(0xFF95D8DA);
  static const Color sBgBlue2 = Color(0xFFA8DAF4);
  static const Color sBorderBlue = Color(0xFF007B85);
  static const Color sLightestBlue = Color(0xFFD5F2F2);
  static const Color sTextDarkBlue = Color(0xFF020723);
  static const Color sPenBlue = Color(0xFF1A237E);
  static const Color sGrBlue = Color(0xFF0B56CB);
  static const Color sBgBlue = Color(0xFFF2F7FF);
  static const Color sBgBlue3 = Color(0xFF2C8AFF);


  // reds
  static const Color sLightRed = Color(0xFFFFE7D8);
  static const Color sBorderRed = Color(0xFFFFB586);
  static const Color sTextRed = Color(0xFFFFC5A0);
  static const Color sTextRedDark = Color(0xFFFF3841);

  // oranges
  static const Color sArrowOrange = Color(0xFFFDB65F);
  static const Color sOrange = Color(0xFFF7C800);
  static const Color sStarOrange = Color(0xFFFFC107);
  static const Color sOrange2 = Color(0xFFF98561);
  static const Color sOrange3 = Color(0xFFFAA066);
  static const Color sOrange4 = Color(0xFFF2BF49);
  static const Color sShadeOrange = Color(0xFFEC574E);
  static const Color sOrange1 = Color(0xFFFFAF7D);
  static const Color sOrange5 = Color(0xFFFFC700);
  static const Color sOrange6 = Color(0xffFF9D00);
  static const Color sOrange7 = Color(0xFFF1A149);
  static const Color sOrange8 = Color(0xFFF27843);

  //grays
  static const Color sTextGray = Color(0xFF707070);
  static const Color sBgGray = Color(0xFFEAEAEA);
  static const Color sborderGray = Color(0xFFEFEFEF);

  //yellows
  static const Color syellow = Color(0xFFE9E28C);

  //Browns
  static const Color sTextBrown = Color(0xFF2E2323);
  static const Color sBrown = Color(0xFF3C3131);
  static const Color cBrown = Color(0xFF39311C);
  static const Color sBrown2 = Color(0xFF34353A);

  //greens
  static const Color sGreen = Color(0xFFA7D6A0);

  //black
  static const Color sBlack = Color(0xFF0F0F0F);

  //butter color
  static const Color sButter = Color(0xFFF5D8A0);

  //custom colors
  static const Color BotsheetTxtColor = Color(0xFF091243);
  static const Color TimerGreay = Color(0xFF9D9D9D);
  // static const Color CourseCardBg = Color(0xFFC70080);

// textStyles
//
  static const TextStyle introHeading = TextStyle(
      color: Styles.sTextDarkBlue, fontWeight: FontWeight.w700, fontSize: 30.0);

  static const TextStyle planHeading = TextStyle(
      color: Styles.sTextDarkBlue, fontWeight: FontWeight.w600, fontSize: 24.0);

  static const TextStyle paySubHeading = TextStyle(
      color: Styles.sTextDarkBlue, fontWeight: FontWeight.w500, fontSize: 18.0);

  static const TextStyle payReport = TextStyle(
      color: Styles.sTextDarkBlue, fontWeight: FontWeight.w500, fontSize: 9.0);

  static const TextStyle introPara = TextStyle(
      color: Styles.sTextGray, fontWeight: FontWeight.w400, fontSize: 14.0);

  static const TextStyle heading = TextStyle(
      color: Styles.sTextDarkBlue, fontSize: 24, fontWeight: FontWeight.w600);

  static const TextStyle headingWhite =
      TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w600);

  static const TextStyle subHeading =
      TextStyle(color: Styles.sTextDarkBlue, fontSize: 18);

  static const TextStyle subHeadingSemiBold = TextStyle(
      color: Styles.sTextDarkBlue,
      fontSize: 18,
      fontWeight: FontWeight.w600,
      fontFamily: 'poppins-semibold');

  static const TextStyle subHeadingSemiBoldWhite = TextStyle(
      color: Styles.sWhite,
      fontSize: 18,
      fontWeight: FontWeight.w600,
      fontFamily: 'poppins-semibold');

  static TextStyle smallHeading =
      TextStyle(color: Styles.sTextDarkBlue.withOpacity(0.5), fontSize: 10);

  static TextStyle smallHeadingDark = const TextStyle(
      color: Styles.sTextDarkBlue, fontSize: 10, fontWeight: FontWeight.w300);

  static TextStyle midHeading = TextStyle(
    color: Styles.sTextDarkBlue.withOpacity(0.5),
    fontSize: 12,
    fontFamily: 'poppins-regular',
  );
  static TextStyle mid1Heading = TextStyle(
    color: Styles.sTextDarkBlue.withOpacity(0.5),
    fontWeight: FontWeight.w500,
    fontSize: 12,
  );
  static TextStyle midHeadingSmall = const TextStyle(
    color: Styles.sTextDarkBlue,
    fontWeight: FontWeight.w500,
    fontSize: 12,
    fontFamily: 'poppins-regular',
  );

  static TextStyle cardSubHeading = TextStyle(
      color: Styles.sTextDarkBlue.withOpacity(0.5),
      fontSize: 12,
      fontWeight: FontWeight.w600);

  static TextStyle cardSubHeadingSml = const TextStyle(
    color: Styles.sTextDarkBlue,
    fontSize: 12,
    fontWeight: FontWeight.w600,
    fontFamily: 'poppins-semibold',
  );
  static TextStyle cardSubHeadingMid = const TextStyle(
      color: Styles.sTextDarkBlue, fontSize: 15, fontWeight: FontWeight.w600);
  static TextStyle cardSubHeadingMidGreen = const TextStyle(
      color: Styles.sGreen, fontSize: 15, fontWeight: FontWeight.w600);

  static TextStyle midHeadingDark =
      const TextStyle(color: Styles.sTextDarkBlue, fontSize: 12);

  static TextStyle midHeadingBlue =
      const TextStyle(color: Styles.sBlue, fontSize: 12);

  static TextStyle midHeadingBlueSml = const TextStyle(
      color: Styles.sTextBlue, fontSize: 12, fontWeight: FontWeight.w500);

  static TextStyle redLighterText =
      const TextStyle(color: Styles.sTextRedDark, fontSize: 13);

  static TextStyle blackLighterText =
      const TextStyle(color: Colors.black, fontSize: 13);

  static TextStyle darkCardTitle = const TextStyle(
      color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);
  static TextStyle lightCardTitle = const TextStyle(
      color: Colors.white, fontWeight: FontWeight.w300, fontSize: 12);

  static TextStyle darkCardTextWhite = TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontWeight: FontWeight.w300,
      fontSize: 12);

  static TextStyle darkCardText = const TextStyle(
      color: Colors.white, fontWeight: FontWeight.w300, fontSize: 8);

  static TextStyle lightMidCardText = TextStyle(
      color: Styles.sTextDarkBlue.withOpacity(0.5),
      fontWeight: FontWeight.w500,
      fontSize: 8);

  static TextStyle lightCardText = const TextStyle(
      color: Colors.black, fontWeight: FontWeight.w300, fontSize: 8);

  static TextStyle darkCardBtnText = const TextStyle(
      color: Colors.white, fontWeight: FontWeight.w500, fontSize: 10);

  static TextStyle lightCardBtnText = TextStyle(
      color: Styles.sTextDarkBlue.withOpacity(0.5),
      fontWeight: FontWeight.w500,
      fontSize: 10);

  static TextStyle darkCardTextThin = const TextStyle(
      color: Colors.white, fontWeight: FontWeight.w300, fontSize: 10);

  static TextStyle tosterText = const TextStyle(
      color: Colors.white, fontWeight: FontWeight.w300, fontSize: 13);

//   static const TextStyle errorText =
//   TextStyle(fontSize: 14.0, color: Styles.gbDarkestRed);
//
  static const TextStyle homeButtons = TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: Styles.sTextBlue);

  static const TextStyle TxtWhite =
      TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white);

  static const TextStyle txtDark = TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: sTextDarkBlue);

  static TextStyle payCardTextLighter = TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w100,
      color: Colors.black.withOpacity(0.5));

  static TextStyle payRCardTextDark = const TextStyle(
      fontSize: 12, fontWeight: FontWeight.w100, color: Colors.black);

  static TextStyle funTextLighter = const TextStyle(
      fontSize: 17, fontWeight: FontWeight.w100, color: Colors.black);

  static TextStyle payCardTitle2Dark = const TextStyle(
      fontSize: 17, fontWeight: FontWeight.w500, color: Colors.black);

  static TextStyle payCardTitle3Dark = const TextStyle(
      fontSize: 28, fontWeight: FontWeight.w500, color: Colors.black);

  static TextStyle payCardTitle3Blu =
      const TextStyle(fontSize: 28, fontWeight: FontWeight.w500, color: sBlue);

  static TextStyle payCardTitleLight = const TextStyle(
      fontSize: 28, fontWeight: FontWeight.w600, color: Colors.white);

  static TextStyle payCardTextDark = const TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w100,
      color: Colors.black,
      fontFamily: 'poppins-semibold');

  static TextStyle payCardTextDarkWhite = const TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w100,
      color: Colors.white,
      fontFamily: 'poppins-semibold');

  static TextStyle payCardTextTitle = const TextStyle(
      fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black);

  static const TextStyle txtBigDark = TextStyle(
      fontSize: 26, fontWeight: FontWeight.w600, color: sTextDarkBlue);

  static const TextStyle txtVeryBigLight =
      TextStyle(fontSize: 49, fontWeight: FontWeight.w600, color: Colors.white);

  static TextStyle txtGray = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w300,
      color: Colors.black.withOpacity(0.5));
  static TextStyle txtBrown = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w300, color: Styles.sBrown);

  static TextStyle txtLargeMid = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white);
  static TextStyle txtLargeMid1Dark =
      const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: sBlue);

  static TextStyle txtLargeMidDark = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.w300, color: Styles.sTextDarkBlue);
  static TextStyle txtLargeMidRed = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.w300, color: Styles.sTextRedDark);

  static TextStyle txtWhite = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w300, color: Colors.white);

  static TextStyle txtSemiBoldGray = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: sTextDarkBlue.withOpacity(0.5));

  static TextStyle txtSemiBoldDark = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w600, color: sTextDarkBlue);

  static TextStyle txtSemiBoldLight = const TextStyle(
      fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white);

  static const TextStyle roleText = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    color: sTextBrown,
  );

  static const TextStyle roleSelectedText = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );

  static const TextStyle cardTitle = TextStyle(
      color: sTextDarkBlue, fontWeight: FontWeight.w600, fontSize: 20.0);

  static const TextStyle cardTitleOrange =
      TextStyle(color: sOrange, fontWeight: FontWeight.w600, fontSize: 20.0);

//   static const TextStyle inputTextLabalErr = TextStyle(
//       color: Styles.gbDarkestRed, fontWeight: FontWeight.w700, fontSize: 20.0);
//
//   static TextStyle inputTextHint =
//   TextStyle(color: Styles.gbLightGrey, fontWeight: FontWeight.w300);
//

  static const TextStyle subHeadingMedium = TextStyle(
      color: Styles.sBrown2,
      fontSize: 14,
      fontWeight: FontWeight.w600,
      fontFamily: 'poppins-medium');

  static TextStyle Timer = TextStyle(
    color: Styles.TimerGreay.withOpacity(0.5),
    fontWeight: FontWeight.w500,
    fontSize: 12,
  );

  static const TextStyle subHeadingMediumWhite = TextStyle(
      color: Styles.sWhite,
      fontSize: 14,
      fontWeight: FontWeight.w600,
      fontFamily: 'poppins-medium');

  static TextStyle TimerWhite = TextStyle(
    color: Styles.sWhite.withOpacity(0.5),
    fontWeight: FontWeight.w500,
    fontSize: 12,
  );

  static const TextStyle worksheetTitle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Styles.BotsheetTxtColor,
      fontFamily: 'poppins-medium');

  static const TextStyle botSheetTitle = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Styles.cBrown,
      fontFamily: 'poppins-medium');

  static const TextStyle pastDetailTitle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Styles.sBgBlue3,
      fontFamily: 'poppins-medium');

  static const TextStyle pastDetailTitleBk = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Styles.sBlack,
      fontFamily: 'poppins-medium');

  //student

  static const TextStyle noticeTitle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Styles.sBlue);

  static const TextStyle noticeSubTitle = TextStyle(
      fontSize: 12, fontWeight: FontWeight.normal, color: Styles.sBlue);

  //student
  static ButtonStyle ElevatedBtnDark = ElevatedButton.styleFrom(
      elevation: 0,
      primary: Styles.sTextDarkBlue,
      fixedSize: const Size(double.infinity, 45),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)));

  static ButtonStyle mainElevatedBtn = ElevatedButton.styleFrom(
      elevation: 0,
      primary: Styles.sBlue,
      fixedSize: const Size(double.infinity, 45),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)));

  static ButtonStyle roundedElevatedBtn = ElevatedButton.styleFrom(
      elevation: 0,
      primary: Styles.sBlue,
      fixedSize: const Size(100, 37),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)));
  static ButtonStyle roundedRedElevatedBtn = ElevatedButton.styleFrom(
      elevation: 0,
      primary: Styles.sTextRedDark,
      fixedSize: const Size(100, 37),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)));

  static ButtonStyle mainElevatedBtnGray = ElevatedButton.styleFrom(
      elevation: 0,
      primary: Styles.sBgGray,
      fixedSize: const Size(double.infinity, 45),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)));

  static BoxDecoration whiteCard = BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: Styles.sBgGray.withOpacity(0.5),
        spreadRadius: 1,
        blurRadius: 40,
        offset: const Offset(0, 14), // changes position of shadow
      ),
    ],
    borderRadius: BorderRadius.circular(8),
    color: Colors.white,
  );
  static BoxDecoration blueCard = BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: Styles.sBgGray.withOpacity(0.5),
        spreadRadius: 1,
        blurRadius: 40,
        offset: const Offset(0, 14), // changes position of shadow
      ),
    ],
    borderRadius: BorderRadius.circular(8),
    color: Styles.sBlue,
  );
  static BoxDecoration whiteBlueBorderCard = BoxDecoration(
    border: Border.all(color: sBlue),
    boxShadow: [
      BoxShadow(
        color: Styles.sBgGray.withOpacity(0.5),
        spreadRadius: 1,
        blurRadius: 40,
        offset: const Offset(0, 14), // changes position of shadow
      ),
    ],
    borderRadius: BorderRadius.circular(8),
    color: Colors.white,
  );
  static BoxDecoration darkCard = BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: Styles.sBgGray.withOpacity(0.5),
        spreadRadius: 1,
        blurRadius: 40,
        offset: const Offset(0, 14), // changes position of shadow
      ),
    ],
    borderRadius: BorderRadius.circular(8),
    color: Styles.sTextDarkBlue,
  );
//   static ButtonStyle disableBtn = ElevatedButton.styleFrom(
//       elevation: 0,
//       primary: Styles.gbMidGrey,
//       fixedSize: const Size(280, 50),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)));

}
