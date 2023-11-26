import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Column(
          children: [
            //62 36 17
            //48 14 32
            Container(
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color.fromRGBO(62, 36, 17, 1),
                    const Color.fromRGBO(48, 14, 32, 1),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/logo.png",
                          width: 30,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Music",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 27,
                          ),
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CategoryItem("Energize"),
                          CategoryItem("Workout"),
                          CategoryItem("Feel Good"),
                          CategoryItem("Relaxation"),
                          CategoryItem("Chill Out"),
                          CategoryItem("Rock"),
                          CategoryItem("Pop"),
                          Row(
                            children: [
                              Icon(
                                Icons.podcasts,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              CircleAvatar(
                                radius: 13,
                                backgroundImage:
                                    AssetImage("assets/images/p1.jpg"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: const Color.fromRGBO(7, 5, 8, 1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          top: 10,
                        ),
                        child: Text(
                          "START RADIO FROM A SONG",
                          style: TextStyle(
                            color: Color.fromARGB(255, 187, 186, 186),
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/radiohead.png",
                          width: 70,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Radiohead",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              "In Rainbows",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 181, 181, 181),
                                fontSize: 14,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SongItem(
                      artist: "Guns N' Roses",
                      title: "November Rain",
                      image: "assets/images/gunsnroses.jpg", 
                    ),
                    SongItem(
                      artist: "MegaDeath",
                      title: "Tornada of Souls",
                      image: "assets/images/megadeath.jpg",
                    ),
                    SongItem(
                      artist: "Hayko Cepkin",
                      title: "Boynuz Track",
                      image: "assets/images/hayko.jpeg",
                    ),
              
                   
                    Container(
                      padding: const EdgeInsets.only(
                        top: 3,
                        bottom: 3,
                        right: 9,
                        left: 9,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Quick Picks",
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Text(
                                "Play All",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 187, 186, 186),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 60,
              width: double.infinity,
              color: const Color.fromRGBO(33, 33, 33, 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      Text("Home",
                          style: TextStyle(color: Colors.white, fontSize: 10)),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.play_circle,
                        color: Colors.white,
                      ),
                      Text("Samples",
                          style: TextStyle(color: Colors.white, fontSize: 10)),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.explore,
                        color: Colors.white,
                      ),
                      Text("Explore",
                          style: TextStyle(color: Colors.white, fontSize: 10)),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.subscriptions,
                        color: Colors.white,
                      ),
                      Text("Library",
                          style: TextStyle(color: Colors.white, fontSize: 10)),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.slideshow,
                        color: Colors.white,
                      ),
                      Text("Upgrade",
                          style: TextStyle(color: Colors.white, fontSize: 10)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container CategoryItem(String text) {
    return Container(
      padding: const EdgeInsets.only(top: 6, bottom: 6, left: 12, right: 12),
      margin: const EdgeInsets.only(left: 3, right: 3),
      decoration: BoxDecoration(
        color: const Color.fromARGB(19, 255, 255, 255),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color.fromARGB(37, 255, 255, 255),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}

class SongItem extends StatelessWidget {
  final String artist;
  final String title;
  final String image;

  const SongItem({
    Key? key,
    required this.artist,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Image.asset(
            image,
            width: 70,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                artist,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              Text(
                title,
                style: TextStyle(
                  color: const Color.fromARGB(255, 181, 181, 181),
                  fontSize: 14,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
