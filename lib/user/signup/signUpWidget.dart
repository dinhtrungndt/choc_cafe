import 'package:flutter/material.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({super.key});

  @override
  _SignUpWidgetState createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
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
                  labelText: 'Email',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff834D1E)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 32, 8, 245)),
                  ),
                  labelStyle: TextStyle(color: Color(0xff834D1E)),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Username',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff834D1E)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 32, 8, 245)),
                  ),
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
                      _isObscured ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscured = !_isObscured;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                obscureText: _isObscured,
                decoration: const InputDecoration(
                  labelText: 'Confirm Password',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff834D1E)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 32, 8, 245)),
                  ),
                  labelStyle: TextStyle(color: Color(0xff834D1E)),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                  onPressed: _loadingLogin
                      ? null
                      : () {
                          setState(() {
                            _loadingLogin = true;
                          });

                          Future.delayed(const Duration(seconds: 2), () {
                            setState(() {
                              _loadingLogin = false;
                            });
                          });

                          // hiển thị thông báo đăng ký thành công
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Sign up successfully!'),
                            ),
                          );
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
                              AlwaysStoppedAnimation<Color>(Color(0xffFCF2D9)))
                      : (const Text(
                          'Sign Up',
                          style: TextStyle(color: Color(0xffFCF2D9)),
                        )))
            ],
          ),
        ));
  }
}
