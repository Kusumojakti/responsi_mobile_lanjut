import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsi_mobile_lanjut/components/card_button.dart';
import 'package:responsi_mobile_lanjut/components/label_textfield.dart';
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
  final TextEditingController _passwordController  = TextEditingController();
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
                      LabelTextfield(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        expands: false,
                        textAlign: TextAlign.start,
                        label: "Masukkan Email",
                        fieldFill: Colors.white,
                        hintText: "Email",
                        isRequired: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Email tidak boleh kosong';
                            }
                            // Validasi pola email
                            if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                              return 'Masukkan email yang valid';
                            }
                            return null;
                          }
                      ),
                      const SizedBox(height: 20),
                      LabelTextfield(
                        controller: _passwordController ,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        expands: false,
                        textAlign: TextAlign.start,
                        label: "Masukkan Password",
                        fieldFill: Colors.white,
                        hintText: "Password",
                        isRequired: true,
                        validator: (value) =>
                          value!.isEmpty ? 'Password tidak boleh kosong' : null,
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
                        onTap: () => Get.to(const NavPersistent()),
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
