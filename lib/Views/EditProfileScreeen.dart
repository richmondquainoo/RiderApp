import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rider_app/Components/FlatClipPathComponent.dart';
import 'package:rider_app/Components/LoginTextFieldComponent.dart';
import 'package:rider_app/Constants.dart';
import 'package:rider_app/Services/UtilityService.dart';

import '../ConstantColors.dart';
import 'MyProfileScreen.dart';

class EditProfileScreen extends StatefulWidget {

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  var newProfileNameController = TextEditingController();
  var newEmailController = TextEditingController();

  String newProfileName;
  String newEmail;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kPrimaryColor2,
        body: SingleChildScrollView(
          child: Column(
            children: [
              FlatClipPathComponent(
                color: kPrimaryTextColor,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyProfileScreen(),
                    ),
                  );
                },
                label: 'Edit Profile',
              ),
              SizedBox(height: 50,),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(vertical: 17),
                    //   child: Container(
                    //     child: Text(
                    //       "Change my profile name",
                    //       style: GoogleFonts.lato(
                    //         fontSize: 19,
                    //         fontWeight: FontWeight.w700,
                    //         color: Colors.black,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 33,
                    // ),
                    LoginTextFieldComponent(
                      prefixIcon: Icon(Icons.person),
                      hint: 'Enter new name',
                      obscureText: false,
                      enableField: true,
                      controller: newProfileNameController,
                      onChange: (value) {
                        newProfileName = value;
                      },
                    ),
                    SizedBox(height: 30,),
                    LoginTextFieldComponent(
                      prefixIcon: Icon(Icons.email),
                      hint: 'Enter new email address',
                      obscureText: false,
                      enableField: true,
                      controller: newEmailController,
                      onChange: (value) {
                        newEmail = value;
                      },
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    GestureDetector(
                      onTap: (){
                        bool canProceed = isValidEntries(context);
                        if(canProceed){

                        }

                        new UtilityService().confirmationBox(
                            color: Colors.blue,
                            title: 'Profile name change confirmation',
                            context: context,
                            message: 'Are you sure you want to change profile name?',
                            onYes: (){},
                            onNo: (){
                              Navigator.pop(context);
                            }
                        );
                      },
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 70,
                              decoration: BoxDecoration(
                                color: kPrimaryTextColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'Done',
                                  style: GoogleFonts.lato(
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  isValidEntries(BuildContext context){
    if(newProfileNameController.text.length == 0){
      new UtilityService().showMessage(
          message: 'Please enter name',
          context: context,
          icon: Icon(Icons.error_outline,color: Colors.red,)
      );
      return false;
    }else if(newEmailController.text.length == 0 ||
          !newEmailController.text.contains('@') ||
          !newEmailController.text.contains('.')
    ){
      new UtilityService().showMessage(
          message: 'Please enter a valid email',
          context: context,
          icon: Icon(Icons.error_outline,color: Colors.red,)
      );
      return false;
    }
    else{
      return true;
    }

  }
}
