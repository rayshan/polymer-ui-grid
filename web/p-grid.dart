import 'package:polymer/polymer.dart';


@CustomTag('p-grid')
class PGrid extends PolymerElement {
  @observable List people;

  PGrid.created() : super.created();

  dataReceived(e, detail, node) {
    this.people = detail['response'];
    print(this.people.length);
  }
}

