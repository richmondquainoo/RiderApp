import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path/path.dart';
import 'package:rider_app/Components/ProgressDialog.dart';
import 'package:rider_app/Components/TextButtonComponent.dart';
import 'package:rider_app/Components/TopBarComponent.dart';
import 'package:rider_app/Models/OTPModel.dart';
import 'package:rider_app/Services/NetworkUtility.dart';
import 'package:rider_app/Services/UtilityService.dart';
import 'package:rider_app/Views/SignupScreen.dart';
import 'package:http/http.dart' as http;
import 'package:rider_app/util/paths.dart';


import '../ConstantColors.dart';
import '../Constants.dart';
import 'HomeScreen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var phoneController = TextEditingController();

  String name;
  String email;
  String password;
  String phone;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kPrimaryColor2,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
                  child: TopBarComponent(
                      icon: Icon(Icons.arrow_back_ios_outlined),
                      iconFunction: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignupScreen(),
                            ));
                      }),
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: TextFormField(
                    //controller: controller,
                    //onChanged: onChange(),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: 'Full name',
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: TextFormField(
                    //controller: controller,
                    //onChanged: onChange(),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email_outlined),
                      hintText: 'Email',
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: TextFormField(
                    //controller: controller,
                    //onChanged: onChange(),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone),
                      hintText: 'Phone number',
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: TextFormField(
                    //controller: controller,
                    //onChanged: onChange(),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_outline_sharp),
                      hintText: 'Password',
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: TextFormField(
                    //controller: controller,
                    //onChanged: onChange(),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.location_history),
                      hintText: 'Your current location',
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  child: TextButtonComponent(
                    label: 'Register',
                    onTap: () {
                      // Validation of the entry fields
                      bool canProceed = isValidEntries(context);

                    //  Authentication
                      if (canProceed) {
                        OTPModel model = OTPModel(
                          name: name,
                          email: email,
                          // pin: pin,
                          phone: phone,
                        );
                        new UtilityService().confirmationBox(
                            title: 'Confirmation',
                            message: 'Are you sure you want to proceed with the registration?',
                            context: context,
                            onYes: (){
                              createOTP(
                                  context: context, dataModel: model);
                            },
                            onNo: (){
                              print('No');
                            }
                        );

                      }

                    },
                    labelColor: kPrimaryTextColor,
                    borderRadius: 9,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        "I have an account.",
                        style: GoogleFonts.lato(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.4,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignupScreen(),
                          ),
                        );
                      },
                      child: Container(
                        child: Text(
                          "Log in",
                          style: GoogleFonts.lato(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.4,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool isValidEntries(BuildContext context) {
    if (nameController.text.length == 0) {
      new UtilityService().showMessage(
        context: context,
        message: 'Please enter name',
        icon: Icon(
          Icons.error_outline,
          color: Colors.red,
        ),
      );
      return false;
    } else if (emailController.text.length == 0 ||
        !emailController.text.contains('@') ||
        !emailController.text.contains('.')) {
      new UtilityService().showMessage(
        context: context,
        message: 'Please enter email',
        icon: Icon(
          Icons.error_outline,
          color: Colors.red,
        ),
      );
      return false;
    } else if (passwordController.text.length < 4) {
      new UtilityService().showMessage(
          context: context,
          message: 'Password must be 4 or more characters long',
          icon: Icon(
            Icons.error_outline,
            color: Colors.red,
          ));
      return false;
    } else if (phoneController.text.length != 10) {
      new UtilityService().showMessage(
          context: context,
          message: 'Invalid length of phone number',
          icon: Icon(
            Icons.error_outline,
            color:Colors.red,
          ));
      return false;
    } else {
      return true;
    }
  }
  
  void  createOTP({OTPModel dataModel, BuildContext context})async{
    try{
      showDialog(
        context: context,
        builder: (context){
          return ProgressDialog(displayMessage: 'Please wait...');
        }
      );
      var jsonBody = jsonEncode(dataModel);
      NetworkUtility networkUtility = NetworkUtility();
      
      http.Response response = await networkUtility.postDataWithAuth(OTP_URL,jsonBody,ACCESS_TOKEN);
      print('Response: ${response.headers}');
      int status = response.statusCode;
      print('Status code: $status');

      if(status == 500 || status == 404 || status == 403){
        new UtilityService().showMessage(
          context: context,
          message: 'An error has occurred',
          icon: Icon(Icons.error_outline,
            color:Colors.red,
          ),
        );
      }else{
        print('Body: ${response.body}');
      }
      Navigator.of(context, rootNavigator: true).pop();

    }catch(e){
      print('postUserData error: $e');
      new UtilityService().showMessage(
        context: context,
        message: 'An error has occurred. Please try again',
        icon: Icon(
          Icons.error_outline,
          color:Colors.red,
        ),
      );
      Navigator.of(context, rootNavigator: true).pop();
    }
    
    
}
  
}
