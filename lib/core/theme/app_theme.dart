import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///This class defines light theme and dark theme
///Here we used flex color scheme
class Themes {
  static ThemeData get theme => ThemeData(
        colorScheme: _m3schemeData,
      );
  // ThemeData.light(
  //       useMaterial3: true,

  //       // scheme: MaterialTheme.lightScheme(),
  //       // colors: _myFlexScheme.light,
  //       // surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
  //       // blendLevel: 20,
  //       // appBarOpacity: 0.95,
  //       // swapColors: true,
  //       // tabBarStyle: FlexTabBarStyle.forBackground,

  //       // subThemesData: const FlexSubThemesData(
  //       //   blendOnLevel: 20,
  //       //   blendOnColors: false,
  //       //   inputDecoratorRadius: 8,
  //       // ),
  //       // keyColors: const FlexKeyColors(
  //       //   useSecondary: true,
  //       //   useTertiary: true,
  //       // ),
  //       // pageTransitionsTheme: const PageTransitionsTheme(
  //       //   builders: {
  //       //     // replace default CupertinoPageTransitionsBuilder with this
  //       //     TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
  //       //     TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
  //       //   },
  //       // ),
  //       // visualDensity: FlexColorScheme.comfortablePlatformDensity,
  //       // useMaterial3: true,

  //       // /// fontFamily: GoogleFonts.getFont('Lato').fontFamily,

  //       // ///
  //     );
  static ThemeData get darkTheme => FlexThemeData.dark(
        // scheme: FlexScheme.blueWhale,
        colors: _myFlexScheme.dark,
        surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
        blendLevel: 15,
        appBarStyle: FlexAppBarStyle.background,
        appBarOpacity: 0.90,

        tabBarStyle: FlexTabBarStyle.forBackground,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 30,
          inputDecoratorRadius: 8,
        ),
        keyColors: const FlexKeyColors(
          useSecondary: true,
          useTertiary: true,
        ),
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            // replace default CupertinoPageTransitionsBuilder with this
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          },
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        useMaterial3: true,
        // To use the playground font, add GoogleFonts package and uncomment
        // fontFamily: GoogleFonts.getFont('Lato').fontFamily,
      );
// If you do not have a themeMode switch, uncomment this line
// to let the device system mode control the theme mode:
// themeMode: ThemeMode.system,
}

//change this according to the file exported by m3 buil
const ColorScheme _m3schemeData = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xff68548e),
  surfaceTint: Color(0xff68548e),
  onPrimary: Color(0xffffffff),
  primaryContainer: Color(0xffebddff),
  onPrimaryContainer: Color(0xff230f46),
  secondary: Color(0xff635b70),
  onSecondary: Color(0xffffffff),
  secondaryContainer: Color(0xffe9def8),
  onSecondaryContainer: Color(0xff1f182b),
  tertiary: Color(0xff7e525d),
  onTertiary: Color(0xffffffff),
  tertiaryContainer: Color(0xffffd9e1),
  onTertiaryContainer: Color(0xff31101b),
  error: Color(0xffba1a1a),
  onError: Color(0xffffffff),
  errorContainer: Color(0xffffdad6),
  onErrorContainer: Color(0xff410002),
  background: Color(0xfffef7ff),
  onBackground: Color(0xff1d1b20),
  surface: Color(0xfffef7ff),
  onSurface: Color(0xff1d1b20),
  surfaceVariant: Color(0xffe7e0eb),
  onSurfaceVariant: Color(0xff49454e),
  outline: Color(0xff7a757f),
  outlineVariant: Color(0xffcbc4cf),
  shadow: Color(0xff000000),
  scrim: Color(0xff000000),
  inverseSurface: Color(0xff322f35),
  inversePrimary: Color(0xffd3bcfd),
);

const FlexSchemeData _myFlexScheme = FlexSchemeData(
  name: 'Midnight blue',
  description: 'Midnight blue theme, custom definition of all colors',
  light: FlexSchemeColor(
    primary: Color(0xFF00296B),
    primaryContainer: Color(0xFFA0C2ED),
    secondary: Color(0xFFD26900),
    secondaryContainer: Color(0xFFFFD270),
    tertiary: Color(0xFF5C5C95),
    tertiaryContainer: Color(0xFFC8DBF8),
  ),
  dark: FlexSchemeColor(
    primary: Color(0xFFB1CFF5),
    primaryContainer: Color(0xFF3873BA),
    secondary: Color(0xFFFFD270),
    secondaryContainer: Color(0xFFD26900),
    tertiary: Color(0xFFC9CBFC),
    tertiaryContainer: Color(0xFF535393),
  ),
);
