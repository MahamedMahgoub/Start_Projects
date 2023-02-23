import 'package:flutter/material.dart';

import '../components/component.dart';
import '../components/wave_clip.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool password = true;
  bool confirmpassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Register Screen'),
          elevation: 0,
          backgroundColor: Colors.purple,
        ),
        body: SingleChildScrollView(
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
                    hintText: 'Enter Your Name',
                    labelText: 'Name',
                    prefixIcon: Icon(Icons.person),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  DefaultTextField(
                    keyboardtype: TextInputType.emailAddress,
                    hintText: 'Example@gmail.com',
                    labelText: 'Email',
                    prefixIcon: const Icon(
                      Icons.email,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  DefaultTextField(
                    keyboardtype: TextInputType.phone,
                    hintText: 'Phone Number',
                    labelText: 'Phone Number',
                    prefixIcon: Icon(
                      Icons.phone,
                      size: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  DefaultTextField(
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
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  DefaultTextField(
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
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  defulteButton(
                    text: 'Register',
                    width: 280,
                    reduis: 8.0,
                    background: Colors.purple,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  defulteButton(
                    text: 'login',
                    width: 280,
                    reduis: 8.0,
                    background: Colors.grey,
                  ),
                ],
              ),
            ],
          ),
        )

        /*SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Container(
                height: 150,
                width: double.infinity,
                color: Colors.purple,
                
                child: const Center(
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
            DefaultTextField(
              hintText: 'Enter Your Name',
              labelText: 'Name',
              prefixIcon: Icon(Icons.person),
            ),
            const SizedBox(
              height: 16,
            ),
            DefaultTextField(
              keyboardtype: TextInputType.emailAddress,
              hintText: 'Example@gmail.com',
              labelText: 'Email',
              prefixIcon: const Icon(
                Icons.email,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            DefaultTextField(
              keyboardtype: TextInputType.phone,
              hintText: 'Phone Number',
              labelText: 'Phone Number',
              prefixIcon: Icon(
                Icons.phone,
                size: 20,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            DefaultTextField(
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
            ),
            const SizedBox(
              height: 16,
            ),
            DefaultTextField(
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
            ),
            const SizedBox(
              height: 16,
            ),
            defulteButton(
              text: 'Register',
              width: 280,
              reduis: 8.0,
              background: Colors.purple,
            ),
            const SizedBox(
              height: 16,
            ),
            defulteButton(
              text: 'login',
              width: 280,
              reduis: 8.0,
              background: Colors.grey,
            ),
          ],
        ),
      ), */
        );
  }
}
