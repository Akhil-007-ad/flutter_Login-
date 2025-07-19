import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:my_first_app/screen/sign_up_scren.dart';

import '../widgets/custom_scaffold_widget.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final _formSigninkey=GlobalKey<FormState>();
  bool rememberpassword=true;
  @override
  Widget build(BuildContext context) {
    return  CustomScaffold(
      child: Column(
        children: [
          Expanded(
              flex:1,child: SizedBox(
            height: 10,
          )),
          Expanded(
              flex:7,child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0)
              )
            ),
            child: SingleChildScrollView(
              child: Form(
                  key: _formSigninkey,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(25.0, 50.0, 25.0, 20.0),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Welcome Back",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                        ),),
                        SizedBox(height: 15,),
                        TextFormField(
                          validator: (value){
                            if(value==null||value.isEmpty){
                              return "Please Enter Email";
                            }
                            else{
                              return null;
                            }},
                            decoration:InputDecoration(
                              label: Text("Email"),
                              hintText: "Enter Email",
                              hintStyle: TextStyle(
                                color: Colors.black26,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black12
                                ),
                                borderRadius: BorderRadius.circular(10)
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black12
                                ),
                                borderRadius: BorderRadius.circular(10)
                              )
                            )
                        ),
                        SizedBox(height: 15,),
                        TextFormField(
                            obscureText: true,
                            obscuringCharacter: '*',
                            validator: (value){
                              if(value==null||value.isEmpty){
                                return "Please Enter Password";
                              }
                              else{
                                return null;
                              }},
                            decoration:InputDecoration(
                                label: Text("Password"),
                                hintText: "Enter Passsword",
                                hintStyle: TextStyle(
                                  color: Colors.black26,
                                ),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black12
                                    ),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black12
                                    ),
                                    borderRadius: BorderRadius.circular(10)
                                )
                            )
                        ),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(value: rememberpassword,
                                  onChanged: (bool?value){
                                  setState(() {
                                    rememberpassword=value!;
                                  });
                                },
                                activeColor: Colors.deepOrangeAccent,),
                                Text("Remember Me",
                                style:TextStyle(
                                  color: Colors.black45,
                                ))
                              ],
                            ),
                            GestureDetector(
                              child: Text("Forgot Password",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.deepOrange
                                ),),
                            )
                          ],
                        ),
                        SizedBox(height: 15,),
                        SizedBox(
                          width: double.infinity,
                          height: 43,
                          child: ElevatedButton(onPressed: (){
                            if(_formSigninkey.currentState!.validate() && rememberpassword){
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("Processing Data"))
                              );
                            }
                            else if(!rememberpassword) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text("Please agree to the perosonal information storage"))
                              );
                            };
                          }, child: Text("Sign In",style: TextStyle(fontWeight: FontWeight.bold),)),
                        ),
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            Expanded(child: Divider(
                              thickness: 0.7,
                              color: Colors.black12,
                            )),
                            Padding(padding: EdgeInsets.symmetric(
                              vertical: 0,
                              horizontal:10,
                            )),
                            Expanded(child: Text("Sign Up With",style: TextStyle(color: Colors.black12),)),
                            Expanded(child: Divider(
                              thickness: 0.7,
                              color: Colors.black12,
                            )),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Logo(Logos.facebook_f),
                            Logo(Logos.google),
                            Logo(Logos.twitter),
                            Logo(Logos.apple)
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Didnt have an Account?",style: TextStyle(color: Colors.black45)),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (e)=> SignUpScren()));
                              },
                              child: Text("Sign Up",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold),),
                            )
                          ],
                        )
              
              
              
                      ],
                    ),
                  )),
            ),
          ))
        ],
      )
    );
  }
}
