import 'package:polymer/polymer.dart';


@CustomTag('p-grid')
class PGrid extends PolymerElement {
  final List fruits = toObservable(['apples', 'pears', 'bananas']);

  PGrid.created() : super.created();

  bool get applyAuthorStyles => true;
}

