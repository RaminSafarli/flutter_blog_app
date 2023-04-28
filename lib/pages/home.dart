import 'package:flutter/material.dart';
import 'package:flutter_blog/models/news.dart';
import 'package:flutter_blog/pages/detail.dart';
import 'package:flutter_blog/pages/search.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List recentlyPlayed = [
    {
      "cover":
          "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/artistic-album-cover-design-template-d12ef0296af80b58363dc0deef077ecc_screen.jpg?ts=1561488440",
      "title": "Pain",
      "space": true
    },
    {
      "cover":
          "https://static-cse.canva.com/blob/1035322/1600w-1Nr6gsUndKw.jpg",
      "title": "Memories",
      "space": true
    },
    {
      "cover":
          "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/602f4731226337.5646928c3633f.jpg",
      "title": "Science",
      "space": true,
    },
    {
      "cover":
          "https://cdn.kingscross.co.uk/media/20191118225723/Tame-Impala.jpeg",
      "title": "Currents",
      "space": true,
    },
    {
      "cover":
          "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/rap-cd-album-mixtape-cover-design-template-8e67148b45c3625087dc1cb15f1de8a8_screen.jpg?ts=1629408333",
      "title": "Dreams",
      "space": true,
    },
    {
      "cover":
          "https://www.udiscovermusic.com/wp-content/uploads/2022/04/600NWA_Straigh_CoverAr_3000DPI300RGB1000162059.jpg",
      "title": "Straight outta compton",
      "space": true,
    },
    {
      "cover":
          "https://indiater.com/wp-content/uploads/2021/06/Free-Music-Album-Cover-Art-Banner-Photoshop-Template.jpg",
      "title": "My turn",
      "space": false,
    },
  ];

  List artists = [
    {
      "image":
          "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/artistic-album-cover-design-template-d12ef0296af80b58363dc0deef077ecc_screen.jpg?ts=1561488440",
      "name": "Artist 1"
    },
    {
      "image":
          "https://static-cse.canva.com/blob/1035322/1600w-1Nr6gsUndKw.jpg",
      "name": "Artist 2"
    },
    {
      "image":
          "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/602f4731226337.5646928c3633f.jpg",
      "name": "Artist 3"
    },
    {
      "image":
          "https://cdn.kingscross.co.uk/media/20191118225723/Tame-Impala.jpeg",
      "name": "Artist 4"
    },
    {
      "image":
          "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/rap-cd-album-mixtape-cover-design-template-8e67148b45c3625087dc1cb15f1de8a8_screen.jpg?ts=1629408333",
      "name": "Artist 5"
    },
    {
      "image":
          "https://www.udiscovermusic.com/wp-content/uploads/2022/04/600NWA_Straigh_CoverAr_3000DPI300RGB1000162059.jpg",
      "name": "Artist 6"
    },
    {
      "image":
          "https://indiater.com/wp-content/uploads/2021/06/Free-Music-Album-Cover-Art-Banner-Photoshop-Template.jpg",
      "name": "Artist 7"
    },
  ];

  @override
  Widget build(BuildContext context) {
    void _navigateToDetail(int index) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailPage(null, index),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "News",
          style: TextStyle(fontSize: 25),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: ((context) => const SearchPage())));
            },
            icon: const Icon(Icons.search, size: 25),
          ),
        ],
        backgroundColor: Colors.green,
      ),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.green,
                  Colors.yellow.withOpacity(0),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                Colors.yellow.withOpacity(0.5),
                              ),
                              overlayColor:
                                  const MaterialStatePropertyAll(Colors.yellow),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text("Politics"),
                          ),
                          const SizedBox(width: 10),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                Colors.yellow.withOpacity(0.5),
                              ),
                              overlayColor:
                                  const MaterialStatePropertyAll(Colors.yellow),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text("Business"),
                          ),
                          const SizedBox(width: 10),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                Colors.yellow.withOpacity(0.5),
                              ),
                              overlayColor:
                                  const MaterialStatePropertyAll(Colors.yellow),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text("Opinion"),
                          ),
                          const SizedBox(width: 10),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                Colors.yellow.withOpacity(0.5),
                              ),
                              overlayColor:
                                  const MaterialStatePropertyAll(Colors.yellow),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text("Health"),
                          ),
                          const SizedBox(width: 10),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                Colors.yellow.withOpacity(0.5),
                              ),
                              overlayColor:
                                  const MaterialStatePropertyAll(Colors.yellow),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text("Entartainment"),
                          ),
                          const SizedBox(width: 10),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                Colors.yellow.withOpacity(0.5),
                              ),
                              overlayColor:
                                  const MaterialStatePropertyAll(Colors.yellow),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text("Style"),
                          ),
                          const SizedBox(width: 10),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                Colors.yellow.withOpacity(0.5),
                              ),
                              overlayColor:
                                  const MaterialStatePropertyAll(Colors.yellow),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text("Sport"),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Today's news",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.info,
                              color: Colors.white,
                              size: 25,
                            ))
                        // Row(
                        //   children: const [
                        //     Icon(Icons.home),
                        //     SizedBox(width: 10),
                        //     Icon(Icons.add)
                        //   ],
                        // )
                      ],
                    ),
                    CarouselSlider.builder(
                      itemCount: news.length,
                      itemBuilder: (BuildContext context, int itemIndex,
                              int pageViewIndex) =>
                          Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () => _navigateToDetail(itemIndex),
                          child: Stack(
                            children: [
                              Image.network("${news[itemIndex]["image"]}"),
                              Positioned(
                                bottom: 50,
                                child: Container(
                                  color: Colors.white,
                                  padding: const EdgeInsets.all(10),
                                  width: 275,
                                  child: Text(
                                    "${news[itemIndex]["title"]}",
                                    style: const TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        color: Colors.green),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      options: CarouselOptions(
                        height: 200.0,
                        enlargeCenterPage: false,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Popular news",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.info,
                              color: Colors.white,
                              size: 25,
                            ))
                        // Row(
                        //   children: const [
                        //     Icon(Icons.home),
                        //     SizedBox(width: 10),
                        //     Icon(Icons.add)
                        //   ],
                        // )
                      ],
                    ),
                    CarouselSlider.builder(
                      itemCount: news.length,
                      itemBuilder: (BuildContext context, int itemIndex,
                              int pageViewIndex) =>
                          Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            Image.network("${news[itemIndex]["image"]}"),
                            Positioned(
                                bottom: 50,
                                child: Container(
                                  color: Colors.white,
                                  padding: const EdgeInsets.all(10),
                                  width: 275,
                                  child: Text(
                                    "${news[itemIndex]["title"]}",
                                    style: const TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        color: Colors.green),
                                  ),
                                ))
                          ],
                        ),
                      ),
                      options: CarouselOptions(
                        height: 200.0,
                        enlargeCenterPage: false,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Global news",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.info,
                              color: Colors.white,
                              size: 25,
                            ))
                        // Row(
                        //   children: const [
                        //     Icon(Icons.home),
                        //     SizedBox(width: 10),
                        //     Icon(Icons.add)
                        //   ],
                        // )
                      ],
                    ),
                    CarouselSlider.builder(
                      itemCount: news.length,
                      itemBuilder: (BuildContext context, int itemIndex,
                              int pageViewIndex) =>
                          Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            Image.network("${news[itemIndex]["image"]}"),
                            Positioned(
                                bottom: 50,
                                child: Container(
                                  color: Colors.white,
                                  padding: const EdgeInsets.all(10),
                                  width: 275,
                                  child: Text(
                                    "${news[itemIndex]["title"]}",
                                    style: const TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        color: Colors.green),
                                  ),
                                ))
                          ],
                        ),
                      ),
                      options: CarouselOptions(
                        height: 200.0,
                        enlargeCenterPage: false,
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
