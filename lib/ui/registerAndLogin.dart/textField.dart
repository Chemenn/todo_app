import 'package:flutter/material.dart';
import '../../color/colors.dart' as appColors;

class InputField
 extends StatefulWidget {
bool isEmail;
bool isUsername;
bool isVisible;
bool isPassword;
TextEditingController? controller;
  InputField({super.key,
  this.isEmail = true,
  this.isUsername=false,
  this.isVisible = true,
  this.isPassword=false,
  this.controller,
  });

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
 
  @override
  Widget build(BuildContext context){
    var obscureText=true;
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 18,left: 40,right: 40),
            child: TextFormField(
              controller: widget.controller,
               validator: (value) {
              if (widget.isEmail) {
                 String pattern =
                        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
                        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
                        r"{0,253}[a-zA-Z0-9])?)*$";
                RegExp regex = RegExp(pattern);
                if (value!.isEmpty) {
                  return 'email must not be empty';
                } else if (!value.toString().contains(regex)||!value.toString().contains('gmail.com')) {
                  return 'Please enter valide Email';
                }
              }
              if (widget.isPassword) {
                //RegExp regExp = RegExp(r"(?=.*[a-z])(?=.[A-Z])\w+");
                if (value!.isEmpty) {
                  return 'password must not be empty';
                } else if (value.length < 4 ) {
                  return 'password must  be more than 4 characters';
                } 
                // else if (!value.toString().contains(regExp)) {
                //   return 'Use Numbers and Capital and Small characters at least 1';
                // }
              }
                return null;
               },
              obscureText: widget.isEmail? false
                :widget.isUsername?false
                : widget.isVisible
                    ? true
                    : false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
              contentPadding:EdgeInsets.only(bottom: 8,left: 5),
              prefixIcon: widget.isEmail
                     ?const Icon(Icons.email_outlined)
                     :widget.isPassword
                     ?const Icon(Icons.lock_outline,size: 26,)
                     :const Icon(Icons.person_outlined,size: 28,),
              suffixIcon: widget.isEmail?null
                     :widget.isUsername?null
                     :!widget.isVisible
                      ? GestureDetector(
                          onTap: () {
                            setState(() {
                              widget.isVisible = !widget.isVisible;
                            });
                          },
                          child: const Icon(Icons.visibility_outlined),
                          )
                          : GestureDetector(
                          onTap: () {
                            setState(() {
                              widget.isVisible = !widget.isVisible;
                            });
                          },
                          child: const Icon(Icons.visibility_off_outlined,),
                        ),
              hintText: widget.isEmail
                  ? 'Email Address'
                  : widget.isPassword
                      ? 'Password'
                      : 'Username',
              errorStyle: TextStyle(),
              iconColor: appColors.iconColor,
              hintStyle: TextStyle(
                  fontSize: 18,fontWeight: FontWeight.w400,
                  color: appColors.iconColor,
                ),
              ),
              textAlignVertical: TextAlignVertical.bottom,
           ),
          ),
        ],
      ),
    );
  }
}
 