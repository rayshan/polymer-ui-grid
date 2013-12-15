import 'package:polymer/polymer.dart';
import 'dart:html';

@CustomTag('p-grid')
class PGrid extends PolymerElement {
  @published List columns;
  @published List rows;
  @observable List sorted;
  
  PGrid.created() : super.created() {
    this.sorted = ["id", "increasing"];
  }
  
  sortTable(Event e, var detail, Node target) {
    String sortByEl = target.text.split(' ')[0];
    sortByEl = sortByEl.toLowerCase();
    this.rows.sort((a,b) => a[sortByEl].compareTo(b[sortByEl]));
  }
}

