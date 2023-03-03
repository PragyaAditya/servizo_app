import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:servizo_app/common/button.dart';
import 'package:servizo_app/common/checkbox.dart';
import 'package:servizo_app/common/text.dart';
import 'package:servizo_app/common/text_field.dart';
import 'package:servizo_app/screens/wellcome_screen.dart';

class LogInOnePage extends StatefulWidget {
  const LogInOnePage({super.key});

  @override
  State<LogInOnePage> createState() => _LogInOnePageState();
}

class _LogInOnePageState extends State<LogInOnePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  bool isSelect = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xffF3FAFF),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              servizoLogo(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.14,
              ),
              nameTxt(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.008,
              ),
              nameField(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              emailTxt(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.008,
              ),
              emailField(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              mobileTxt(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.008,
              ),
              mobileField(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              row(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              confrimBtn()
            ],
          ),
        ),
      ),
    ));
  }

  Widget row() => Row(
        children: [
          AppCheckBox(),
          SizedBox(
            width: 5,
          ),
          Text("I accept terms & condition and privacy policy.")
        ],
      );
  Widget confrimBtn() => Button(
      onpressed: () { Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WellcomeScreen()),
            ) ;}, text: "Confrim", color: Color(0xFf2893DB), width: 2);
  Widget mobileField() => TextFields(
        suffixtext: "+91",
        text: "Enter your number",
        controller: phoneController,
        textcolor: Color(0xff43474A),
        textInputType: TextInputType.number,
      );
  Widget mobileTxt() => TittleText(
        text: "Mobile no",
        color: Color(0xffB4B4B4),
        textSize: 14,
      );
  Widget emailField() => TextFields(
        text: "Enter your email",
        controller: emailController,
        textcolor: Colors.black,
        textInputType: TextInputType.emailAddress,
      );
  Widget emailTxt() => TittleText(
        text: "Email ID",
        color: Color(0xffB4B4B4),
        textSize: 14,
      );
  Widget nameField() => TextFields(
        text: "name",
        controller: nameController,
        textcolor: Colors.black,
        textInputType: TextInputType.name,
      );
  Widget nameTxt() => TittleText(
        text: "Name",
        color: Color(0xffB4B4B4),
        textSize: 14,
      );
  Widget servizoLogo() => Center(
        child: SvgPicture.asset(
          'assets/servizologo.svg',
          height: 60,
          width: 100,
        ),
      );
}
