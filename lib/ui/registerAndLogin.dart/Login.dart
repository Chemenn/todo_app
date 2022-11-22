import 'package:flutter/material.dart';
import 'package:pro/data/postLogin.dart';
import 'package:pro/ui/registerAndLogin.dart/button.dart';
import 'package:pro/ui/registerAndLogin.dart/register.dart';
import 'package:pro/ui/registerAndLogin.dart/textField.dart';
import '../../color/colors.dart' as appColors;

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool check = false;
  
  TextEditingController _usernameController=TextEditingController();
  TextEditingController _passwordController=TextEditingController();
  
  GlobalKey<FormState> _keyGlo=GlobalKey<FormState>();
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height * 0.30,
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(67, 121, 255, 1)),
                  ),
                ),
                Form(
                  key: _keyGlo,
                  child: InputField(
                    controller: _usernameController,
                     isEmail: false,
                     isUsername: true,
                  ),
                ),
                InputField(
                  controller: _passwordController,
                  isPassword: true,
                  isEmail: false,
                  isVisible: false,
                  ),
                checkButton(),
                GestureDetector(
                  onTap: ()async{
                    if(_keyGlo.currentState!.validate()) {
                    
                        print(_usernameController.text);
                        print(_passwordController.text);
                        LogInHttp().createUser(_usernameController.text, _passwordController.text, context);
                      
                      
                    //   }
                    //   var user = await APICallerServer().registerOrLogin(
                    //     password: _passwordController.text, 
                    //     username: _usernameController.text, email: '');
                    //   if (user==null) {
                    //   ScaffoldMessenger.maybeOf(context)!.showSnackBar(SnackBar(
                    //     content: Text('ERRRRRRRO'),
                    //   ));
                    // } else {
                    //   // to Home page
                    //   ScaffoldMessenger.maybeOf(context)!.showSnackBar(SnackBar(
                    //     content: Text('URRRRRAAAAAAA'),
                    //   ));
                    }  
                  },
                  child: Button(text: "Login",)),
                SizedBox(height: 10,),
                 Stack(children: 
                 [
                  Image.asset("assets/register.png"),
                  select(),
                 ]),
              ],
            ),
          ),
        ),
      ),
    );
  }

select(){
  return Positioned(
    left: 0,right: 0,
    child: Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don’t have an account?",style: TextStyle(
          fontSize: 12,fontWeight: FontWeight.w400),),
          TextButton(onPressed: () => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const RegisterPage()),), 
          child: Text("Register",style: TextStyle(
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
                  onChanged:((bool? value) {
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
//     String pattern =
//         r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
//         r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
//         r"{0,253}[a-zA-Z0-9])?)*$";
//     RegExp regex = RegExp(pattern);
//     if (value == null || value.isEmpty || !regex.hasMatch(value))
//       {return 'Enter a valid email address';}
//     else {
//       return null;
//     }
//   }

// valideEmail(){
//     _isValide = EmailValidator.validate(_emailController.text);
//     if(_isValide){
//         setState(() {
//           msg="null";
//           LogInHttp().createUser(_emailController.text, _passwordController.text, context);
//         });
//     }else if (_emailController.text.isEmpty){
//         setState(() {
//         msg="it is empty";});
//     }else{
//         setState(() {
//         print(_emailController.text);
//         msg="enter valide email";});
//     }
//     return msg;
//   }
// }

