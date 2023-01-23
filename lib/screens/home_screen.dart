import 'package:flutter/material.dart';
import 'package:to_do_app/model/to_do_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ToDoListModel? toDoListModel;
  int val = 0;
  List<String> data = [];

  @override
  void initState() {
    // TODO: implement initState
    toDoListModel = ToDoListModel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomeScreen"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          data.add((val++).toString());
          toDoListModel!.studentList = data;
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: toDoListModel!.studentList == null
            ? const SizedBox()
            : ListView.builder(
                itemCount: toDoListModel!.studentList!.length,
                itemBuilder: (context, index) => Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.red,
                  child: Text("Val: ${toDoListModel!.studentList![index]}"),
                ),
              ),
      ),
    );
  }
}
