import 'package:bhavipath/screens/course_screen.dart';
import 'package:bhavipath/screens/signin.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Container reusableTextField(String text, IconData icon, bool isPasswordType,
    TextEditingController controller) {
  bool isObscurePassword = true;
  return Container(
    padding: EdgeInsets.all(15),
    child: TextField(
      controller: controller,
      obscureText: isPasswordType ? isObscurePassword : false,
      enableSuggestions: !isPasswordType,
      autocorrect: !isPasswordType,
      cursorColor: Colors.black,
      style: TextStyle(
        color: Colors.black.withOpacity(0.9),
      ),
      decoration: InputDecoration(
        // suffixIcon: isPasswordType
        //     ? IconButton(
        //         onPressed: () {
        //           MaterialStateProperty.resolveWith((states) {
        //             if (states.contains(MaterialState.pressed)) {
        //               isObscurePassword = !isObscurePassword;
        //             }
        //           });
        //         },
        //         icon: Icon(Icons.remove_red_eye, color: Colors.grey),
        //       )
        //     : null,
        prefixIcon: Icon(
          icon,
          color: Color(0xff131040),
        ),
        hintText: text,
        hintStyle: TextStyle(
          color: Color(0xff6A5C5C),
        ),
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        fillColor: Color(0xffE1E0EB),
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 0, style: BorderStyle.none),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      keyboardType: isPasswordType
          ? TextInputType.visiblePassword
          : TextInputType.emailAddress,
    ),
  );
}

Container SignInSignUpButton(
    BuildContext context, bool isSignIn, Function onTap) {
  return Container(
    width: 150,
    height: 50,
    margin: const EdgeInsets.fromLTRB(0, 20, 0, 10),
    child: ElevatedButton(
      onPressed: () {
        onTap();
      },
      child: Center(
        child: Text(
          isSignIn ? 'SIGN IN' : 'SIGN UP',
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
      style: ButtonStyle(
          shadowColor: MaterialStateProperty.all<Color>(Colors.black),
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.black;
            }
            return Color(0xff001039);
          }),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))),
    ),
  );
}

Container Cancel(BuildContext context, bool isSignIn) {
  return Container(
    width: 150,
    height: 50,
    margin: const EdgeInsets.fromLTRB(0, 20, 0, 10),
    child: ElevatedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignInScreen()));
      },
      child: Center(
        child: Text(
          'Cancel',
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
      style: ButtonStyle(
          shadowColor: MaterialStateProperty.all<Color>(Colors.black),
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.black;
            }
            return Color(0xff131040);
          }),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))),
    ),
  );
}

Container branch(String name) {
  return Container(
    padding: EdgeInsets.fromLTRB(25, 15, 20, 15),
    margin: EdgeInsets.fromLTRB(25, 15, 25, 0),
    width: double.infinity,
    height: 60,
    decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
      color: Color(0xffE1E0EB),
    ),
    child: Row(
      children: [
        Text(
          "${name}",
          style: GoogleFonts.firaSans(
              fontWeight: FontWeight.w400,
              fontSize: 20,
              color: Color(0xff01091d)),
        ),
        Expanded(child: Container()),
        Icon(
          Icons.arrow_forward_ios,
          color: Color(0xff01091d),
        ),
      ],
    ),
  );
}

Container skill(String name, String extra) {
  return Container(
    padding: EdgeInsets.fromLTRB(25, 15, 20, 15),
    margin: EdgeInsets.fromLTRB(25, 15, 25, 0),
    width: double.infinity,
    height: 80,
    decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
      color: Color(0xff001039),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${name}",
          style: GoogleFonts.firaSans(
              fontWeight: FontWeight.w400, fontSize: 20, color: Colors.white),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "${extra}",
          style: GoogleFonts.firaSans(
              fontWeight: FontWeight.w400, fontSize: 10, color: Colors.white),
        ),
      ],
    ),
  );
}
