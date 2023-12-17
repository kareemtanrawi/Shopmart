import 'package:flutter/material.dart';
import 'package:kareem_s_application1/presentation/ph_x_bold_screen/ph_x_bold_screen.dart';
import 'package:kareem_s_application1/presentation/iphone_13_mini_two_screen/iphone_13_mini_two_screen.dart';
import 'package:kareem_s_application1/presentation/iphone_13_mini_three_screen/iphone_13_mini_three_screen.dart';
import 'package:kareem_s_application1/presentation/login_screen/login_screen.dart';
import 'package:kareem_s_application1/presentation/loginn_screen/loginn_screen.dart';
import 'package:kareem_s_application1/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:kareem_s_application1/presentation/iphone_13_mini_eight_tab_container_screen/iphone_13_mini_eight_tab_container_screen.dart';
import 'package:kareem_s_application1/presentation/cart_screen/cart_screen.dart';
import 'package:kareem_s_application1/presentation/home_container_screen/home_container_screen.dart';
import 'package:kareem_s_application1/presentation/iphone_13_mini_eleven_screen/iphone_13_mini_eleven_screen.dart';
import 'package:kareem_s_application1/presentation/iphone_13_mini_twelve_screen/iphone_13_mini_twelve_screen.dart';
import 'package:kareem_s_application1/presentation/success_screen/success_screen.dart';
import 'package:kareem_s_application1/presentation/iphone_13_mini_thirteen_screen/iphone_13_mini_thirteen_screen.dart';
import 'package:kareem_s_application1/presentation/iphone_13_mini_fourteen_screen/iphone_13_mini_fourteen_screen.dart';
import 'package:kareem_s_application1/presentation/iphone_13_mini_fifteen_screen/iphone_13_mini_fifteen_screen.dart';
import 'package:kareem_s_application1/presentation/frame_335_screen/frame_335_screen.dart';
import 'package:kareem_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String phXBoldScreen = '/ph_x_bold_screen';

  static const String iphone13MiniTwoScreen = '/iphone_13_mini_two_screen';

  static const String iphone13MiniThreeScreen = '/iphone_13_mini_three_screen';

  static const String loginScreen = '/login_screen';

  static const String loginnScreen = '/loginn_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String iphone13MiniSevenPage = '/iphone_13_mini_seven_page';

  static const String iphone13MiniEightPage = '/iphone_13_mini_eight_page';

  static const String iphone13MiniEightTabContainerScreen =
      '/iphone_13_mini_eight_tab_container_screen';

  static const String cartScreen = '/cart_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String iphone13MiniElevenScreen =
      '/iphone_13_mini_eleven_screen';

  static const String iphone13MiniTwelveScreen =
      '/iphone_13_mini_twelve_screen';

  static const String successScreen = '/success_screen';

  static const String iphone13MiniThirteenScreen =
      '/iphone_13_mini_thirteen_screen';

  static const String iphone13MiniFourteenScreen =
      '/iphone_13_mini_fourteen_screen';

  static const String iphone13MiniFifteenScreen =
      '/iphone_13_mini_fifteen_screen';

  static const String frame335Screen = '/frame_335_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        phXBoldScreen: PhXBoldScreen.builder,
        iphone13MiniTwoScreen: Iphone13MiniTwoScreen.builder,
        iphone13MiniThreeScreen: Iphone13MiniThreeScreen.builder,
        loginScreen: LoginScreen.builder,
        loginnScreen: LoginnScreen.builder,
        signUpScreen: SignUpScreen.builder,
        iphone13MiniEightTabContainerScreen:
            Iphone13MiniEightTabContainerScreen.builder,
        cartScreen: CartScreen.builder,
        homeContainerScreen: HomeContainerScreen.builder,
        iphone13MiniElevenScreen: Iphone13MiniElevenScreen.builder,
        iphone13MiniTwelveScreen: Iphone13MiniTwelveScreen.builder,
        successScreen: SuccessScreen.builder,
        iphone13MiniThirteenScreen: Iphone13MiniThirteenScreen.builder,
        iphone13MiniFourteenScreen: Iphone13MiniFourteenScreen.builder,
        iphone13MiniFifteenScreen: Iphone13MiniFifteenScreen.builder,
        frame335Screen: Frame335Screen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: LoginScreen.builder
      };
}
