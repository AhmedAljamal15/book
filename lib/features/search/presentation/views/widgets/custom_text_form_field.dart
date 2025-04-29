import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
          color: Colors.white,
          width: 2,
          
        ),
        borderRadius: BorderRadius.circular(15),),
        suffixIcon: Icon(
          Icons.search,
        ),
        ),

    );
  }
}
