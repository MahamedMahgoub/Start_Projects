import 'package:flutter/material.dart';

class DefaultTextField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final Icon? prefixIcon;
  final Widget? sufix;
  final TextInputType? keyboardtype;
  bool passwordVisible = false;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  DefaultTextField({
    Key? key,
    this.hintText,
    this.prefixIcon,
    this.labelText,
    this.sufix,
    this.keyboardtype,
    this.passwordVisible = false,
    this.controller,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        controller: controller,
        validator: validator,
        obscureText: passwordVisible,
        //  obscureText: passwordVisible,
        keyboardType: keyboardtype,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          labelText: labelText,
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          prefixIcon: prefixIcon,
          suffixIcon: sufix,
        ),
      ),
    );
  }
}

Widget defulteButton({
  double width = double.infinity,
  Color background = Colors.blue,
  bool isUpperCase = true,
  double reduis = 0.0,
  Function()? onPressed,
  required String text,
  final Icon? icon,
}) =>
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(reduis),
        color: background,
      ),
      width: width,
      height: 45,
      child: InkWell(
        onTap: onPressed,
        child: Center(
          child: Text(
            isUpperCase ? text.toUpperCase() : text,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
 
 // Icon(Icons.login_outlined),