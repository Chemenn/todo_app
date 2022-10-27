import 'package:flutter/material.dart';
import 'package:pro/ui/homePage/homePage.dart';
import 'package:pro/ui/registerAndLogin.dart/Login.dart';
import 'package:pro/ui/registerAndLogin.dart/button.dart';
import 'package:pro/ui/registerAndLogin.dart/textField.dart';
import '../../color/colors.dart' as appColors;
import '../../data/postLogin.dart';


class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
 bool check=false;

 TextEditingController _emailController=TextEditingController();
 TextEditingController _passwordController=TextEditingController();
 TextEditingController _usernameController=TextEditingController();

GlobalKey<FormState> _keyGlo=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height*0.26,
                  child: Text("Register",
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(67, 121, 255, 1)),),),
                 Form(
                  key: _keyGlo,
                   child: Column(
                     children: [
                        InputField(
                          controller: _emailController,
                          isEmail: true,
                        ),  
                       InputField(
                    controller: _usernameController,
                    isEmail: false,
                    isUsername: true,
                   ),
                   InputField(
                    controller: _passwordController,
                    isPassword: true,
                    isVisible: false,
                    isEmail: false,
                   ),
                     ],
                   ),
                 ),    
                checkButton(),
                GestureDetector(
                  onTap: ()async{
                      if(_keyGlo.currentState!.validate()) {
                        PostLogIn().createUser(_emailController.text, _passwordController.text,_usernameController.text, context);
                        print(_emailController.text);
                      }
                  },
                  child: Button(text: "Register",)),
                 Stack(children: 
                 [
                  Image.asset("assets/register.png"),
                  select(),
                 ],
                 ),
              ],
            ),
           ),
          ),
          ),
        );
      }

 select(){
  return Positioned(
    right: 0,left: 0,
    child: Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Already have an account?",style: TextStyle(
          fontSize: 12,fontWeight: FontWeight.w400),),
          TextButton(onPressed: () =>Navigator.push(context,
      MaterialPageRoute(builder: (context) => const Login()),), 
          child: Text("Login",style: TextStyle(
            fontSize: 12,fontWeight: FontWeight.w400,
            color: appColors.buttonColor),),)
      ],
    ),
  );
}

checkButton(){
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Checkbox(
                  value: check,
                  onChanged:((value) {
                    setState(() {
                    check=value!;
                    });
                  })),
              const Text("Remember Password"),
            ],
          ),
          const Text("Forget Password"),
        ],
      ),
    );
  }
}

  // String? validateEmail(String? value) {
  //   String pattern =
  //       r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
  //       r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
  //       r"{0,253}[a-zA-Z0-9])?)*$";
  //   RegExp regex = RegExp(pattern);
  //   if (value == null || value.isEmpty || !regex.hasMatch(value))
  //     return 'Enter a valid email address';
  //   else {
  //     return null;
  //   }
  // }

  // valideEmail(){
  //   _isValide = EmailValidator.validate(_emailController.text);
  //   if(_isValide){
  //       setState(() {
  //         msg=null;
  //         LogInHttp().createUser(_emailController.text, _passwordController.text, context);
  //       });
  //   }else if (_emailController.text.isEmpty){
  //       setState(() {
  //       msg="enter valide email";});
  //   }else{
  //       setState(() {
  //       print(_emailController.text);
  //       msg="enter valide email";});
  //   }
  //   return msg;

  // }
