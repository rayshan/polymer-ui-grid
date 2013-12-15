import 'package:polymer/polymer.dart';

@CustomTag('p-grid-demo')
class PGridDemo extends PolymerElement {
  @observable List people;
  
  PGridDemo.created() : super.created();

  dataReceived(e, detail, node) {
    this.people = detail['response'];
    print(this.people.length);
  }
}