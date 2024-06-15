import 'package:choc_cafe/user/login/loginWidget.dart';
import 'package:choc_cafe/user/signup/signUpWidget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8E3B6),
      body: Stack(
        children: [
          const Positioned(
            child: background_login_signup(),
          ),
          Positioned(
            top: 150,
            left: 28,
            right: 28,
            child: Container(
              height: 500,
              decoration: BoxDecoration(
                color: const Color(0xffFCF2D9),
                border: Border.all(
                  color: const Color(0xff834D1E),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    SizedBox(
                      height: 35,
                      // decoration: BoxDecoration(
                      //   border: Border.all(
                      //     color: const Color(0xff834D1E),
                      //     width: 1,
                      //   ),
                      //   borderRadius: BorderRadius.circular(15),
                      // ),
                      child: TabBar(
                        controller: _tabController,
                        labelColor: const Color(0xffFCF2D9),
                        unselectedLabelColor: const Color(0xff834D1E),
                        indicator: BoxDecoration(
                          color: const Color(0xff834D1E),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        tabs: const [
                          SizedBox(
                            width: 1000,
                            child: Tab(
                              text: 'Login',
                            ),
                          ),
                          SizedBox(
                            width: 1000,
                            child: Tab(
                              text: 'Sign Up',
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 430,
                      child: TabBarView(
                        controller: _tabController,
                        children: const [
                          LoginWidget(),
                          SignUpWidget(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class background_login_signup extends StatelessWidget {
  const background_login_signup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Positioned(child: Image.asset('assets/login_signup/logo_top.png')),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Image.asset(
                'assets/logo.png',
                width: 200,
                height: 200,
              ),
            ),
          ],
        ),
        const Spacer(),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/login_signup/coffeebeans.png',
                width: 200,
                height: 200,
              ),
              const SizedBox(width: 16),
              Image.asset(
                'assets/login_signup/chocolate.png',
                width: 200,
                height: 200,
              ),
            ],
          ),
        )
      ],
    );
  }
}
