import 'package:polymer/polymer.dart';


@CustomTag('p-grid')
class PGrid extends PolymerElement {
  @published List people;
  PGrid.created() : super.created();
}

