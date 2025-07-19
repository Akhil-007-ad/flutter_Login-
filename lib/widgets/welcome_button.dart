import 'package:flutter/material.dart';
import 'package:my_first_app/screen/sign_up_scren.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({super.key,this.buttonText,this.buttonColor,this.onTap});
  final String? buttonText;
  final Widget? onTap;
  final Color? buttonColor;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (e)=> onTap!));
      },
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: buttonColor!,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            bottomRight: Radius.circular(30)
          ),
        ),
          child: Text(
              buttonText!,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color:Colors.white,
          ),)),
    );
  }
}
