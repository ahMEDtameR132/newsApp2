import 'package:flutter/material.dart';
import 'package:newsappcubit/widget/article_listbview.dart';
import 'package:newsappcubit/widget/article_item.dart';
import 'package:newsappcubit/widget/category_listview.dart';
import 'package:newsappcubit/widget/category_new.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: Text(
          "newsApp",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CategoryListview()),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "General News",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ArticleListbview()
        ],
      ),
    );
  }
}
