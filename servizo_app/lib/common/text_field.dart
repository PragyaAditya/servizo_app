import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TextFields extends StatelessWidget {
  // final IconData icon;
  final String text;
  final Color textcolor;
  final TextInputType textInputType;
  final String? suffixtext;

  final TextEditingController? controller;

  // final Widget widget;

  const TextFields(
      {Key? key,
      required this.text,
      this.controller,
      required this.textcolor,
      required this.textInputType,
      this.suffixtext})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 45,
          child: TextFormField(
            controller: controller,
            keyboardType: textInputType,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w600, color: textcolor),
            decoration: InputDecoration(
                prefixText: suffixtext,
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.only(left: 20),
                labelStyle: TextStyle(color: Color(0XFF909090), fontSize: 14),
                // hintText: hintText,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                      width: 1, color: Color(0XFFE7E5E5)), //<-- SEE HERE
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                      width: 1, color: Color(0XFFE7E5E5)), //<-- SEE HERE
                )),

            // widget
          ),
        ),
      ],
    );
  }
}
