import 'package:flutter/material.dart';
import 'package:login_app/screens/register_screen.dart';

import '../components/component.dart';
import '../components/wave_clips.dart';
import 'animated._list.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<LoginScreen> {
  bool password = true;
  bool confirmpassword = true;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Login Screen'),
          elevation: 0,
          backgroundColor: Colors.purple,
        ),
        body: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                ClipPath(
                  clipper: waveClipper(),
                  child: Container(
                    height: 180,
                    width: double.infinity,
                    color: Colors.purple,
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 40),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    DefaultTextField(
                      controller: emailcontroller,
                      keyboardtype: TextInputType.emailAddress,
                      hintText: 'Example@gmail.com',
                      labelText: 'Email',
                      prefixIcon: const Icon(
                        Icons.email,
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter your Email ';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    DefaultTextField(
                      controller: passwordcontroller,
                      keyboardtype: TextInputType.visiblePassword,
                      hintText: 'password',
                      labelText: 'password',
                      prefixIcon: const Icon(Icons.lock),
                      passwordVisible: password,
                      sufix: InkWell(
                        onTap: () {
                          setState(() {
                            password = !password;
                          });
                        },
                        child: Icon(
                          password
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter your Password ';
                        } else if (value.length < 8) {
                          return 'Password is too Short';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    defulteButton(
                      text: 'login',
                      width: 280,
                      reduis: 8.0,
                      background: Colors.purple,
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          print(emailcontroller.text);
                          print(passwordcontroller.text);
                        }
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Animated_List()),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    defulteButton(
                      text: 'register',
                      width: 280,
                      reduis: 8.0,
                      background: Colors.grey,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterScreen()),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
