import 'package:polymer/polymer.dart';

@CustomTag('p-grid')
class PGrid extends PolymerElement {
  @published int count = 0;

  PGrid.created() : super.created() {
  }

  void increment() {
    count++;
  }
}

