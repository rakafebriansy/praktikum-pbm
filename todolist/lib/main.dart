import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> todoList = [];

  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'TODO LIST',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // create todo
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      controller: textEditingController,
                      decoration: InputDecoration(
                        label: Text('Add Todo'),
                        hintText: 'Input your todo here...',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          todoList.add(textEditingController.text);
                        });
                      },
                      child: Text('Submit'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple[300],
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'My Todo',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 600,
                child:
                    todoList.isNotEmpty
                        ? ListView.builder(
                          itemCount: todoList.length,
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.all(4),
                              margin: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.deepPurple),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(todoList[index]),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        todoList.removeAt(index);
                                      });
                                    },
                                    icon: Icon(Icons.delete, size: 20),
                                  ),
                                ],
                              ),
                            );
                          },
                        )
                        : Center(child: Text('No data.')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
