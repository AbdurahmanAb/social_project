import 'package:flutter/material.dart';
import 'package:kim/features/Splash/presentation/widgets/auth_buttons.dart';
import 'package:kim/utils/constsnts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: Center(
        child: Column(
        
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          
            AuthButton(text: "Login with apple", icon: Icons.apple,),
            SizedBox(height:Constants.screen_height/37 ,),
              AuthButton(text: "Login with apple", icon: Icons.apple,),  
               SizedBox(height:Constants.screen_height/37 ,),
              AuthButton(text: "Login with apple", icon: Icons.apple,),
               SizedBox(height:Constants.screen_height/37 ,),
                AuthButton(text: "Login with apple", icon: Icons.apple,)
          ],
        ),
      )),
    );
  }
}