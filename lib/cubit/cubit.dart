import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsappcubit/cubit/state.dart';
import 'package:newsappcubit/model/article.dart';
import 'package:newsappcubit/network/api_servise.dart';

class Appcubit extends Cubit <Appstate> {
  ApiServise apiServise = ApiServise();
  Appcubit() : super(initialstate());
  getnews() async {
    emit(loadingstate());
    try {
      var json = await apiServise.get(
        endpoint:
            "v2/top-headlines?country=us&category=business&apiKey=e67343b0e5e64822ad4141ebc18e6247",
      );
      List<Article> articles = [];
      for (var i in json['articles']) {
        articles.add(
          Article(
            image: i['urlToImage'],
            name: i['title'],
            desc: i['description'],
          ),
        );
      }
      emit(loadedstate(x: articles));
    } on Exception catch (erorr) {
      // TODO
      emit(Errorstate(errormasseg: erorr.toString()));
    }
  }
}
