import 'package:flutter/material.dart';
import 'package:login_app/screens/login_screen.dart';

import '../components/component.dart';
import '../components/wave_clips.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool password = true;
  bool confirmpassword = true;
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Register Screen'),
          elevation: 0,
          backgroundColor: Colors.purple,
        ),
        body: SingleChildScrollView(
          child: Form(
            key: formkey,
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
                          'Register',
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
                      controller: nameController,
                      hintText: 'Enter Your Name',
                      labelText: 'Name',
                      prefixIcon: Icon(Icons.person),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter your Name ';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    DefaultTextField(
                      controller: emailController,
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
                      controller: phoneController,
                      keyboardtype: TextInputType.phone,
                      hintText: 'Phone Number',
                      labelText: 'Phone Number',
                      prefixIcon: Icon(
                        Icons.phone,
                        size: 20,
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter your Phone ';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    DefaultTextField(
                      controller: passwordController,
                      keyboardtype: TextInputType.visiblePassword,
                      hintText: 'password',
                      labelText: 'password',
                      prefixIcon: Icon(Icons.lock),
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
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    DefaultTextField(
                      controller: confirmPasswordController,
                      passwordVisible: confirmpassword,
                      keyboardtype: TextInputType.visiblePassword,
                      hintText: 'Confirm password',
                      labelText: 'Confirm password',
                      prefixIcon: Icon(Icons.lock),
                      sufix: InkWell(
                        onTap: () {
                          setState(() {
                            confirmpassword = !confirmpassword;
                          });
                        },
                        child: Icon(
                          confirmpassword
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter your Password ';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    defulteButton(
                      text: 'Register',
                      width: 280,
                      reduis: 8.0,
                      background: Colors.purple,
                      onPressed: () {
                        if (formkey.currentState!.validate()) {}
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    defulteButton(
                      text: 'login',
                      width: 280,
                      reduis: 8.0,
                      background: Colors.grey,
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()),
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
