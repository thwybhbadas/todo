import 'package:get/get.dart';
import 'package:todo/screens/home_screen.dart';
import 'package:todo/screens/login_screen.dart';
import 'package:todo/screens/signup_screen.dart';

class GetRoutes {
  static const String login = "/login";
  static const String signup = "/signup";
  static const String home = "/home";


  static List <GetPage> routes=[
    GetPage(name: GetRoutes.login,
    page: ()=> LoginScreen(),),
  
   GetPage(name: GetRoutes.signup,
    page: ()=> SignupScreen(),),
  
   GetPage(name: GetRoutes.home,
    page: ()=> HomeScreen(),)
  ];
}
