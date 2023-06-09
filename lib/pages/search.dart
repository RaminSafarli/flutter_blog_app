import 'package:flutter/material.dart';
import 'package:flutter_blog/models/news.dart';
import 'package:flutter_blog/utilities/navigationUtils.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String enteredValue = "";
  List results = [];
  void searchNews(String value) {
    results.clear();
    if (value.trim().isNotEmpty) {
      for (int i = 0; i < news.length; i++) {
        if (news[i]["title"]
            .toLowerCase()
            .trim()
            .contains(value.toLowerCase().trim())) {
          results.add(news[i]);
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search"),
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
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  TextField(
                    onChanged: (value) {
                      setState(() {
                        enteredValue = value;
                        searchNews(enteredValue);
                      });
                    },
                    style: const TextStyle(color: Colors.green),
                    decoration: const InputDecoration(
                      hintText: "What do you want to search?",
                      hintStyle: TextStyle(
                        color: Colors.green,
                      ),
                      fillColor: Colors.white,
                      border: InputBorder.none,
                      focusColor: Colors.transparent,
                      filled: true,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: results.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () => NavigationUtils.navigateToDetail(
                              context, index, results),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              // borderRadius: BorderRadius.all(
                              //   Radius.circular(20),
                              // ),
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            margin: const EdgeInsets.only(bottom: 10),
                            child: ListTile(
                              leading: Image.network(results[index]["image"]),
                              title: Text(
                                results[index]["title"],
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
