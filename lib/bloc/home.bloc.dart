
import 'package:rxdart/subjects.dart';
import 'package:saucemen/bloc/base.bloc.dart';

class HomeBloc extends BaseBloc {
  //
  static BehaviorSubject<int> currentPageIndex;

  //switch page to cart
  static void switchPageToCart() {
    currentPageIndex.add(2);
  }

  static void initiBloc() {
    currentPageIndex = BehaviorSubject<int>();
  }

  static void closeListener() {
    currentPageIndex.close();
  }
}
