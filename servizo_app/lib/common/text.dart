import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TittleText extends StatelessWidget {
  final  String text ;
  final Color color ;
  final double textSize ;
  const TittleText({super.key ,required this.text ,required this.color ,required this.textSize });

  @override
  Widget build(BuildContext context) {
    return  Text(text ,style: TextStyle(fontSize: textSize ,color:color ),);
  }
}