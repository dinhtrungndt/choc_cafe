import 'package:choc_cafe/main/home/MainScreen.dart';
import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  bool _isObscured = false;
  bool _loadingLogin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFCF2D9),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 38),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Username or email',
                  // màu boder viền
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff834D1E)),
                  ),
                  // đổi màu viền input khi nhấn vào
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 32, 8, 245)),
                  ),
                  // đổi màu label khi input khi nhấn vào
                  labelStyle: TextStyle(color: Color(0xff834D1E)),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                obscureText: _isObscured,
                decoration: InputDecoration(
                  labelText: 'Password',
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff834D1E)),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 32, 8, 245)),
                  ),
                  labelStyle: const TextStyle(color: Color(0xff834D1E)),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isObscured ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscured = !_isObscured;
                      });
                    },
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot password?',
                    style: TextStyle(color: Color(0xff834D1E)),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Login
              ElevatedButton(
                onPressed: _loadingLogin
                    ? null
                    : () {
                        setState(() {
                          _loadingLogin = true;
                        });

                        // Giả lập quá trình đăng nhập, bạn có thể thay thế bằng logic thực tế
                        Future.delayed(const Duration(seconds: 2), () {
                          setState(() {
                            _loadingLogin = false;
                          });

                          // Chuyển qua màn hình Home sau khi đăng nhập thành công
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MainScreen(),
                            ),
                          );

                          // hiển thị thông báo đăng nhập thành công
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Login successfully!'),
                            ),
                          );
                        });
                      },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff834D1E),
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: _loadingLogin
                    ? const CircularProgressIndicator(
                        valueColor:
                            AlwaysStoppedAnimation<Color>(Color(0xffFCF2D9)),
                      )
                    : const Text(
                        'Login',
                        style: TextStyle(color: Color(0xffFCF2D9)),
                      ),
              )
            ],
          ),
        ));
  }
}
