import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsi_mobile_lanjut/components/card_gridview.dart';
import 'package:responsi_mobile_lanjut/components/card_listview.dart';
// import 'package:responsi_satu/app/components/wg_gridcard.dart';
// import 'package:responsi_satu/app/components/wg_listcard.dart';
// import 'package:responsi_satu/app/modules/detail_song_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 10),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.person),
                      Row(
                        children: [
                          Icon(Icons.notifications_none),
                          SizedBox(
                            width: 15,
                          ),
                          Icon(Icons.settings),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Guest",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 21,
                              color: Colors.black
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              "Widget Grid View",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Colors.black
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const Icon(Icons.arrow_forward_rounded)
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                          height: 250,
                          child: ListView.separated(
                            separatorBuilder: (context, index) =>
                            const SizedBox(
                              width: 10,
                            ),
                            shrinkWrap: true,
                            physics: const ClampingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            // Inside ListView.separated in HomeView
                            itemBuilder: (context, index) {
                              return
                                const WgGridcard(
                                  pict: "https://images.unsplash.com/photo-1719937206300-fc0dac6f8cac?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                  artist: "Samsung",
                                  song: "Lenovo",
                                  pathSong: "",
                                );
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              "Widget List View",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Colors.black
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const Icon(Icons.arrow_forward_rounded)
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                          height: 250,
                          child: ListView.separated(
                              separatorBuilder: (context, index) =>
                              const SizedBox(
                                width: 10,
                              ),
                              shrinkWrap: true,
                              physics: const ClampingScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return const WgListcard(
                                    pict: "https://images.unsplash.com/photo-1719937206300-fc0dac6f8cac?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                    headlines: "Samsung A52",
                                    deskripsi: "Yogyakarta",
                                    date: "Today",
                                    time: "20.00"
                                );
                              }
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
