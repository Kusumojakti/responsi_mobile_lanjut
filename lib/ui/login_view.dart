import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsi_mobile_lanjut/components/card_button.dart';
import 'package:responsi_mobile_lanjut/components/nav_persistent.dart';
import 'package:responsi_mobile_lanjut/ui/forgot_password.dart';
import 'package:responsi_mobile_lanjut/ui/register_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String? _errorMsg;
  final String email = 'admin@gmail.com';
  final String password = 'password';

  void _login() {
    if (_formKey.currentState!.validate()) {
      if (_emailController.text == email &&
          _passwordController.text == password) {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const NavPersistent()));
      } else {
        setState(() {
          _errorMsg = 'Email atau password salah';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 40),
              Center(
                child: Image.asset(
                  "assets/images/logo.png",
                  width: 252,
                  height: 96,
                ),
              ),
              const SizedBox(height: 50),
              Text(
                "Masuk",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 38,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 60, 15, 15),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _emailController,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.red),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Email tidak boleh kosong';
                          }
                          // Validasi pola email
                          if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                            return 'Masukkan email yang valid';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: 'Masukan Password Anda',
                          labelText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.red),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Password tidak boleh kosong';
                          }
                          if (value.length < 8) {
                            return 'Password harus minimal 8 karakter';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Belum punya akun?",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                            ),
                          ),
                          GestureDetector(
                            onTap: () => Get.to(const ForgotPasswordView()),
                            child: Text(
                              "Lupa password?",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                color: const Color(0xff4285F4),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () => Get.to(const RegistrasiView()),
                            child: Text(
                              "Daftar",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                color: const Color(0xff4285F4),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 80),
                      CardButton(
                        btnText: "Masuk",
                        onTap: () => _login(),
                        textStyle: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
