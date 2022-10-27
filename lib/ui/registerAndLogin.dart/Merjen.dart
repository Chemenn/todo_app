// import 'package:pro/ui/registerAndLogin.dart/button.dart';
// import 'package:pro/ui/registerAndLogin.dart/textField.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import '../../data/postLogin.dart';
// import '../../service/api_call.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:email_validator/email_validator.dart';
// import '../../color/colors.dart' as appColors;


// class Register extends StatefulWidget {
//   const Register({super.key});

//   @override
//   State<Register> createState() => _RegisterState();
// }

// class _RegisterState extends State<Register> {
//   bool IconChange = true;
//   bool _isValide = false;
//   String? msg;

//   bool check = false;

//   bool isLoading = false;

//   bool error = false;

//   final _usernameController = TextEditingController();
//   final _passwordController = TextEditingController();
//   final _emailController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(vertical: 45),
//             child: Column(
//               children: [
//                 const Text("Register"),
//                 InputField(
//                   keyboardType: TextInputType.emailAddress,
//                   //validator: EmailValidator.validate(_emailController.text), 
//                   hint: 'Email Address',
//                   // onSaved: (String email){
//                   //   _emailController.text=email;
//                   // },
//                   controller: _emailController,
//                   widget: Icon(
//                     Icons.email_outlined,
//                     size: 24,
//                   ),
//                 ),
//                 InputField(
//                   controller: _usernameController,
//                   hint: "Username",
//                   widget: Container(
//                     padding:
//                         const EdgeInsets.only(left: 7, right: 7, bottom: 2),
//                     color: Colors.transparent,
//                     child: SvgPicture.asset(
//                       "assets/user.svg",
//                     ),
//                   ),
//                 ),
//                 InputField(
//                   controller: _passwordController,
//                   hint: "Password",
//                   widget: Container(
//                     padding: const EdgeInsets.only(
//                         left: 7, right: 7, bottom: 2, top: 10),
//                     child: SvgPicture.asset(
//                       "assets/lock.svg",
//                     ),
//                   ),
//                   widget_2: InkWell(
//                     onTap: () {
//                       setState(() {
//                         IconChange = !IconChange;
//                       });
//                     },
//                     child: Icon(
//                       IconChange
//                           ? Icons.remove_red_eye_outlined
//                           : Icons.remove_red_eye_rounded,
//                       size: 24,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(vertical: 30),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Checkbox(
//                             // activeColor: Colors.white,
//                             side: BorderSide(
//                                 color: appColors.iconColor,
//                                 width: 1.0,
//                                 style: BorderStyle.solid),
//                             value: check,
//                             onChanged: (value) {
//                               setState(() {
//                                 check = value!;
//                               });
//                             },
//                           ),
//                           const Padding(
//                             padding: EdgeInsets.only(right: 30),
//                             child: Text(
//                               "Remember Password",
//                               style: TextStyle(color: Colors.black),
//                             ),
//                           ),
//                         ],
//                       ),
//                       const Text(
//                         "Forget password",
//                         style: TextStyle(
//                           color: Colors.blue,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 if (isLoading)
//                   const SizedBox(
//                     child: CircularProgressIndicator(),
//                     height: 50,
//                     width: 50,
//                   ),
//                 GestureDetector(
//                   onTap: (() async {
//                     valideEmail();
//                     setState(() {
//                       isLoading = true;
//                     });
//                     var user = await APICallerServer().registerOrLogin(
//                         username: _usernameController.text,
//                         email: _emailController.text,
//                         password: _passwordController.text);

//                     if (user==null) {
//                       ScaffoldMessenger.maybeOf(context)!.showSnackBar(SnackBar(
//                         content: Text('ERRRRRRRO'),
//                       ));
//                     } else {
//                       // to Home page
//                       ScaffoldMessenger.maybeOf(context)!.showSnackBar(SnackBar(
//                         content: Text('URRRRRAAAAAAA'),
//                       ));
//                     }
//                   }),
//                   child: Button(text: "Register")
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//   String? validateEmail(String? value) {
//     String pattern =
//         r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
//         r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
//         r"{0,253}[a-zA-Z0-9])?)*$";
//     RegExp regex = RegExp(pattern);
//     if (value == null || value.isEmpty || !regex.hasMatch(value)) {
//       debugPrint('Enter a valid email address');
//     } else {
//       debugPrint("correct");
//     }
//   }
//   valideEmail(){
//     _isValide = EmailValidator.validate(_emailController.text);
//     if(_isValide){
//       PostLogIn().createUser(_usernameController.text, _emailController.text, _passwordController.text, context);
//       setState(() {
//           msg=null;
//         //msg="valide email";
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


 