import 'package:flutter/material.dart';
import 'package:my_first_app/screen/sign_up_scren.dart';
import 'package:my_first_app/screen/signin_screen.dart';
import 'package:my_first_app/widgets/custom_scaffold_widget.dart';
import 'package:my_first_app/widgets/welcome_button.dart';

class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children:[
          SizedBox(
            height: 400,
          ),
          Flexible(child: Container(
            child: Center(
              child: RichText(
                  textAlign:TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Welcome Amigos!\n",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                        )
                      ),
                      TextSpan(
                          text: "\nEnjoy the Thrill to get enroll\ninto your future\n",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize:20 ,
                            fontWeight: FontWeight.w600,
                          )
                      ),
                    ]
                  )),
            ),
          )),
          Flexible(child: Align(
            alignment: Alignment.bottomRight,
            child: Row(
              children: [
                Expanded(child: WelcomeButton(
                  buttonText: "Sign Up",
                  buttonColor: Colors.deepOrangeAccent,
                  onTap: SignUpScren(),
                )),
                Expanded(child: WelcomeButton(
                  buttonText: "Sign In",
                  buttonColor: Colors.indigo,
                  onTap: SigninScreen(),
                ))
              ],
            ),
          ))
        ]
      ),
    );
  }
}