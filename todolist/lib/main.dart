import 'package:flutter/material.dart';
import 'package:todolist/model/items.dart';
import 'widget/card_body_widget.dart';
import 'widget/card_model_bottom.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<DataItems> items = [
    // DataItems(id: '1', name: 'Tập thể dục buổi sáng'),
    // DataItems(id: '2', name: 'Ăn sáng'),
    // DataItems(id: '3', name: 'Đi làm'),
    // DataItems(id: '4', name: 'Ăn trưa'),
  ];

  void _handleAddTask(String name) {
    final newItem = DataItems(id: DateTime.now().toString(), name: name);
    setState(() {
      items.add(newItem);
    });
    // print(newItem.name);
  }

  void _handleDeleteTask(String id) {
    setState(() {
      items.removeWhere((item) => item.id == id);
    });
    // print(id);
  }

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print('rebuild');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'ToDoList',
          style: TextStyle(fontSize: 40),
        ),
        backgroundColor: const Color(0xffFF9800),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: items
              .map((item) => CardBody(
                    item: item,
                    index: items.indexOf(item),
                    deleteTask: _handleDeleteTask,
                  ))
              .toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Colors.grey[100],
              shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(10))),
              context: context,
              builder: (BuildContext context) {
                return ModelBottom(addTask: _handleAddTask);
              });
        },
        backgroundColor: const Color(0xffFF9800),
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }
}
