import 'package:polymer/polymer.dart';

@CustomTag('p-grid')
class PGrid extends PolymerElement {
  @published List columns;
  @published List rows;
  PGrid.created() : super.created();
}

