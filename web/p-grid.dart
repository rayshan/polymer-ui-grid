import 'package:polymer/polymer.dart';
import 'dart:html';

@CustomTag('p-grid')
class PGrid extends PolymerElement {
  @published List columns;
  @published @observable List rows;
  @observable List sorted;
  
  PGrid.created() : super.created() {
    this.sorted = ["id", "increasing"];
  }

  sortTable(Event e, var detail, Node target) {
    // Need to account for Active? to isActive
    String sortByEl = target.text.split(' ')[0];
    sortByEl = sortByEl.toLowerCase();
    this.rows = new List.from(this.rows); //So it knows it's changed
    if(sorted[0] == sortByEl && sorted[1] == "increasing") {
      this.rows = this.rows..sort((a,b) => b[sortByEl].compareTo(a[sortByEl]));
      this.sorted = [sortByEl, "decreasing"];
    } else {
      this.rows = this.rows..sort((a,b) => a[sortByEl].compareTo(b[sortByEl]));
      this.sorted = [sortByEl, "increasing"];
    }
  }
}

