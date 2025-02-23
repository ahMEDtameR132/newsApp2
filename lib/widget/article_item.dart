import 'package:flutter/material.dart';
import 'package:newsappcubit/model/article.dart';

class ArticleItem extends StatelessWidget {
  final Article article;

  const ArticleItem({super.key ,required this.article});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(article.image?? "lib/assets/pasta_15_2.jpg"),
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            article.name,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          Text(
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            article.desc?? "descrpion",
            style: TextStyle(
              color: const Color.fromARGB(255, 141, 140, 140),
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
