import 'package:flutter/material.dart';
import 'package:flutter_blog/pages/detail.dart';

class NavigationUtils {
  static void navigateToDetail(BuildContext context, int index, List data) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailPage(null, index, data),
      ),
    );
  }
}
