import 'package:flutter/material.dart';

class HouseView extends StatelessWidget {
  
  List<String> Locations = [
    "Richardson, California",
    "Los Angles, California",
    "Naerobi, UK",
  ];
  List<String> HouseName = [
    "Summer House",
    "Emerald Palace",
    "Europe Palace",
  ];
  List<String> HouseImage = [
    "assets/images/1.jpg",
    "assets/images/4.jpg",
    "assets/images/3.jpg",
  ];

final HouseTextStyle = TextStyle(fontSize: 20, color: Colors.black54);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.brown,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.brown.shade300,
                            blurRadius: 5,
                            spreadRadius: 3,
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset("assets/images/1.jpg"),
                      ),
                    ),
                    Positioned(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.indigo,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Necray Elite House",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Deskripsi dari perumahan yang ditampilkan",
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("5 Kamar", style: HouseTextStyle),
                    Text("|", style: HouseTextStyle),
                    Text("6 Kamar Mandi", style: HouseTextStyle),
                    Text("|", style: HouseTextStyle),
                    Text("150² Persegi", style: HouseTextStyle),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.pink.shade300),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 2,
                      child: Text(
                        "Jl. Tambas 1 No. 26 Kab.Cirebon",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Harga",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 15,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "\Rp.128.000.000/",
                              style: TextStyle(
                                color: Colors.indigo,
                                fontWeight: FontWeight.w900,
                                fontSize: 23,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.indigo,
                      ),
                      child: Center(
                        child: Text(
                          "Whatsapp",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}