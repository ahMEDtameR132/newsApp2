import 'package:newsappcubit/model/article.dart';

abstract class Appstate{}

class initialstate extends Appstate {}

class Errorstate extends Appstate {
  final String errormasseg ;

  Errorstate({required this.errormasseg});
}

class loadedstate extends Appstate{
  final List<Article> x;

  loadedstate({required this.x});
}

class loadingstate extends Appstate {}
