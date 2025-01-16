import 'package:appointment_project/core/routing/routes.dart';
import 'package:appointment_project/features/login/ui/login_screen.dart';
import 'package:appointment_project/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {

  

  Route generateRoute(RouteSettings settings){

    // this argument to be passed in any screen like this (argument as ClassName )  
    final argument = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen  :
        return MaterialPageRoute(builder: (_)=> const OnboardingScreen());
        
      case Routes.loginScreen  :
        return MaterialPageRoute(builder: (_)=> const LoginScreen());
        
      default:
        return MaterialPageRoute(builder: (_)=> Scaffold(
          body: Center(
            child:  Text('No route defined for ${settings.name}'),
          ),
        ));
    }
  }
}