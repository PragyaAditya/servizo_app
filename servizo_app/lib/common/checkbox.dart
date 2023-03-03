import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppCheckBox extends StatefulWidget {
  const AppCheckBox({Key? key}) : super(key: key);

  @override
  State<AppCheckBox> createState() => _AppCheckBoxState();
}

class _AppCheckBoxState extends State<AppCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
      child: Container(
        alignment: Alignment.center,
        height: 15,
        width: 15,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.blue),
            borderRadius: BorderRadius.circular(4)),
        child: Center(
          child: Icon(
            Icons.check,
            size: 10,
            color: isChecked == true ? Colors.blue : Colors.white,
          ),
        ),
      ),
    );
    // Checkbox(
    //     value: isChecked,
    //     materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    //     visualDensity: VisualDensity.compact,
    //     activeColor: isChecked ? Colors.blue : Colors.grey,
    //     onChanged: (bool? value) {
    //       setState(() {
    //         isChecked = value!;
    //       });
    //     });
  }
}
