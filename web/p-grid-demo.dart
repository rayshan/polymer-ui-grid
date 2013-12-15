import 'package:polymer/polymer.dart';

@CustomTag('p-grid-demo')
class PGridDemo extends PolymerElement {
  @observable List columns;
  @observable List people;
  
  PGridDemo.created() : super.created() {
    this.columns = [
      {"key": "picture", "title": "Picture", "type": "image"},
      {"key": "name", "title": "Name", "type": "string"},
      {"key": "gender", "title": "Gender", "type": "string"},
      {"key": "age", "title": "Age", "type": "number"},
      {"key": "id", "title": "ID", "type": "string"},
      {"key": "isActive", "title": "Active?", "type": "boolean"}
    ];
  }

  dataReceived(e, detail, node) {
    this.people = detail['response'];
    print(this.people.length);
  }
}