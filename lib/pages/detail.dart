import 'package:flutter/material.dart';

import 'package:flutter_blog/models/news.dart';

class DetailPage extends StatefulWidget {
  final int pageIndex;
  final List data;

  const DetailPage(Key? key, this.pageIndex, this.data) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    int detailIndex = widget.pageIndex;
    List myData = widget.data;
    return Scaffold(
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
          CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.green,
                title: Text(
                  "${myData[detailIndex]["title"]}",
                  overflow: TextOverflow.ellipsis,
                ),
                pinned: true,
                floating: true,
                expandedHeight: 250,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.network(
                    myData[detailIndex]["image"],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 5),
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 5),
                      decoration: const BoxDecoration(color: Colors.yellow),
                      child: Text(
                        "${myData[detailIndex]["title"]}",
                        style: const TextStyle(
                          color: Colors.green,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 5),
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 5),
                      decoration: const BoxDecoration(color: Colors.green),
                      child: Text(
                        "${myData[detailIndex]["content"]}",
                        style: const TextStyle(
                          color: Colors.yellow,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
