import 'package:hive/hive.dart';

class ToDoDataBase{
  List toDoList = [];
  //Reference the Box
  final _myBox = Hive.box('mybox');

  //Run this method if this is the first time ever opening this app.
  void createInitalData(){
    toDoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false]
    ];
  }
  
  //Load the data from the database
  void loadData(){
    toDoList = _myBox.get("TODOLIST");
  }
  
  //Update the database
  void updateDatabase(){
    _myBox.put("TODOLIST", toDoList);
  }
}