import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:servizo_app/screens/login_one_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LogInOnePage()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xffF3FAFF),
          body: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
              ),
              servizoLogo(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.36,
              ),
              SatisfiedCustomersAreOurBestAdstxt()
            ],
          )),
    );
  }

  Widget servizoLogo() => Center(
        child: SvgPicture.asset('assets/servizologo.svg'),
      );
  Widget SatisfiedCustomersAreOurBestAdstxt() => Text(
        'Satisfied customers are our best ads.',
        style: TextStyle(fontSize: 16, color: Color(0xff43474A)),
      );
}
