import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsappcubit/cubit/cubit.dart';
import 'package:newsappcubit/cubit/state.dart';
import 'package:newsappcubit/widget/article_item.dart';

class ArticleListbview extends StatelessWidget {
  const ArticleListbview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Appcubit, Appstate>(
      builder: (context, state) {
        if (state is loadedstate) {
          return SliverList.builder(
            itemBuilder: (context, index) {
              return ArticleItem(article: state.x[index],);
            },
            itemCount: state.x.length,
          );
        } else if (state is Errorstate) {
          return SliverToBoxAdapter(child: Text("Erorr: ${state.errormasseg}"));
        } else {
          return SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()));
        }
      },
    );
  }
}
