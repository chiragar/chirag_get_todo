import 'package:flutter_getx_todo/data/model/task.dart';
import 'package:get/get.dart';

import '../data/local/database_db.dart';

class HomeController extends GetxController {
  final Rx<DateTime> _selectedDate = DateTime.now().obs;

  DateTime get selectedDate => _selectedDate.value;

  final Rx<List<Task>> _myTasks = Rx<List<Task>>([]);

  List<Task> get myTasks => _myTasks.value;

  @override
  void onInit() {
    super.onInit();
    getTasks();
  }

  getTasks() async {
    final List<Task> tasksFromDB = [];
    List<Map<String, dynamic>> tasks = await DatabaseDb.queryTasks();
    tasksFromDB.assignAll(
        tasks.reversed.map((data) => Task().fromJson(data)).toList());
    _myTasks.value = tasksFromDB;
  }

  Future<int> deleteTask(String id) async {
    return await DatabaseDb.deleteTask(id);
  }

  Future<int> upDateTask(String id) async {
    return await DatabaseDb.updateTask(id);
  }

  updateSelectedDate(DateTime date) {
    _selectedDate.value = date;
    getTasks();
  }
}
