//import 'state_model.dart';
//
//class Repository {
//  List<Map> getAll() => _nigeria;
//
//  getLocalByState(String state) => _nigeria
//      .map((map) => StateModel.fromJson(map))
//      .where((item) => item.state == state)
//      .map((item) => item.lgas)
//      .expand((i) => i)
//      .toList();
//
//
//  List<String> getStates() => _nigeria
//      .map((map) => StateModel.fromJson(map))
//      .map((item) => item.state)
//      .toList();
//  List _nigeria = [
//  {
//  "state": "Adamawa",
//  "alias": "adamawa",
//  "lgas": [
//  "Demsa",
//  "Ganye",
//  "Gayuk",
//  ]
//},
//{
//"state": "Akwa Ibom",
//"alias": "akwa_ibom",
//"lgas": [
//"Abak",
//"Eastern Obolo",
//"Eket",
//
//];
//}