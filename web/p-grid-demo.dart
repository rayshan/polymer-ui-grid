import 'package:polymer/polymer.dart';

@CustomTag('p-grid-demo')
class PGridDemo extends PolymerElement {
  @observable List columns;
  @observable List people;
  
  PGridDemo.created() : super.created() {
    this.columns = ["picture", "name", "gender", "age", "id", "isActive"];
  }

  dataReceived(e, detail, node) {
    this.people = detail['response'];
    print(this.people.length);
  }
}