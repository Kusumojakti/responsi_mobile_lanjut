import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsi_mobile_lanjut/components/card_button.dart';
import 'package:responsi_mobile_lanjut/components/label_textfield.dart';
import 'package:responsi_mobile_lanjut/components/wg_profile.dart';

class EditAkun extends StatefulWidget {
  const EditAkun({super.key});

  @override
  _EditAkunState createState() => _EditAkunState();
}

class _EditAkunState extends State<EditAkun> {
  final formKey = GlobalKey<FormState>();

  final TextEditingController _nameController =
  TextEditingController(text: 'Bella Belle');
  final TextEditingController _emailController =
  TextEditingController(text: 'bella.dev@gmail.com');
  final TextEditingController _phoneController =
  TextEditingController(text: '081234567890');
  final TextEditingController _addressController =
  TextEditingController(text: 'Yogyakarta');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              const Center(
                child: WgProfile(
                    nama: "Bella",
                    universitas: "Universitas Teknologi Yogyakarta"),
              ),
              const SizedBox(
                height: 50,
              ),
              LabelTextfield(
                keyboardType: TextInputType.emailAddress,
                expands: false,
                textAlign: TextAlign.start,
                label: "Email",
                fieldFill: Colors.white,
                hintText: "Email",
                controller: _emailController,
              ),
              const SizedBox(
                height: 20,
              ),
              LabelTextfield(
                controller: _nameController,
                keyboardType: TextInputType.name,
                expands: false,
                textAlign: TextAlign.start,
                label: "Nama",
                fieldFill: Colors.white,
                hintText: "Nama",
              ),
              const SizedBox(
                height: 20,
              ),
              LabelTextfield(
                controller: _phoneController,
                keyboardType: TextInputType.number,
                expands: false,
                textAlign: TextAlign.start,
                label: "Nomor Telepon",
                fieldFill: Colors.white,
                hintText: "Nomor Telepon",
              ),
              const SizedBox(
                height: 20,
              ),
              LabelTextfield(
                controller: _addressController,
                keyboardType: TextInputType.text,
                expands: false,
                textAlign: TextAlign.start,
                label: "Alamat",
                fieldFill: Colors.white,
                hintText: "Alamat",
              ),
              const SizedBox(
                height: 20,
              ),
              CardButton(
                btnText: "Ubah Profil",
                onTap: () {
                  // Add logic to handle profile update
                  print("Profil updated!");
                },
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
    );
  }
}
