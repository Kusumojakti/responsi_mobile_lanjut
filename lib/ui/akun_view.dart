import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:responsi_mobile_lanjut/components/wg_profile.dart';

class AkunView extends StatelessWidget {
  const AkunView({super.key});

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
                GestureDetector(
                  onTap: () {
                    //
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Kelola Akun",
                        style: GoogleFonts.poppins(
                            fontSize: 21,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                      const Icon(Icons.arrow_forward_rounded)
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Notifikasi",
                      style: GoogleFonts.poppins(
                          fontSize: 21,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    const Icon(Icons.arrow_forward_rounded)
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Privacy Policy",
                      style: GoogleFonts.poppins(
                          fontSize: 21,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    const Icon(Icons.arrow_forward_rounded)
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Terms of Service",
                      style: GoogleFonts.poppins(
                          fontSize: 21,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    const Icon(Icons.arrow_forward_rounded)
                  ],
                )
              ],
            ),
          )),
    );
  }
}
