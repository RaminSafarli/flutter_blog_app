import 'package:flutter/material.dart';
import 'package:flutter_blog/models/news.dart';
import 'package:flutter_blog/pages/detail.dart';
import 'package:flutter_blog/pages/search.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_blog/utilities/navigationUtils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // void navigateToDetail(int index) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => DetailPage(null, index),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
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
                          onTap: () => NavigationUtils.navigateToDetail(
                              context, itemIndex, news),
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
