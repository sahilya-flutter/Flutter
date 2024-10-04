// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text(
//             "Colorful Containers",
//             style: TextStyle(fontSize: 24),
//           ),
//           centerTitle: true,
//           backgroundColor: Colors.blue,
//         ),
//         body: ListView(
//           padding: const EdgeInsets.all(10),
//           children: [
//             Container(
//               height: 100,
//               color: Colors.red,
//             ),
//             const SizedBox(height: 10), // Space between containers
//             Container(
//               height: 100,
//               color: Colors.green,
//             ),
//             const SizedBox(height: 10),
//             Container(
//               height: 100,
//               color: Colors.blue,
//             ),
//             const SizedBox(height: 10),
//             Container(
//               height: 100,
//               color: Colors.yellow,
//             ),
//             const SizedBox(height: 10),
//             Container(
//               height: 100,
//               color: Colors.orange,
//             ),
//             const SizedBox(height: 10),
//             Container(
//               height: 100,
//               color: Colors.purple,
//             ),
//             const SizedBox(height: 10),
//             Container(
//               height: 100,
//               color: Colors.pink,
//             ),
//             const SizedBox(height: 10),
//             Container(
//               height: 100,
//               color: Colors.cyan,
//             ),
//             const SizedBox(height: 10),
//             Container(
//               height: 100,
//               color: Colors.lime,
//             ),
//             const SizedBox(height: 10),
//             Container(
//               height: 100,
//               color: Colors.indigo,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // For date formatting
import 'dart:math'; // For random color generation

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Advanced ToDo List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TodoListScreen(),
    );
  }
}

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({super.key});

  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  final List<Map<String, dynamic>> _todos = []; // List to store tasks
  final Random _random = Random(); // Random object to generate colors

  // Method to add a new task to the list
  void _addNewTodo(String title, String description, DateTime date) {
    setState(() {
      _todos.add({
        'title': title,
        'description': description,
        'date': date,
        'color': Color.fromARGB(
          255,
          _random.nextInt(256),
          _random.nextInt(256),
          _random.nextInt(256),
        ), // Generate random color for each task
      });
    });
  }

  // Method to delete a task
  void _deleteTodo(int index) {
    setState(() {
      _todos.removeAt(index);
    });
  }

  // Displaying a bottom sheet to add a new task
  void _showAddTodoSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return AddTodoForm(onSubmit: _addNewTodo);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ToDo List'),
        backgroundColor: Colors.deepPurple, // Updated AppBar color
      ),
      body: _todos.isEmpty
          ? const Center(
              child: Text('No tasks added yet!'),
            )
          : ListView.builder(
              itemCount: _todos.length,
              itemBuilder: (context, index) {
                return Card(
                  color: _todos[index]['color'], // Set random background color
                  elevation: 3,
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  child: ListTile(
                    title: Text(_todos[index]['title']),
                    subtitle: Text(
                      '${_todos[index]['description']}\nDue: ${DateFormat.yMMMd().format(_todos[index]['date'])}',
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () => _deleteTodo(index),
                    ),
                    isThreeLine: true,
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddTodoSheet(context),
        child: const Icon(Icons.add),
      ),
    );
  }
}

// Form widget to add a new task
class AddTodoForm extends StatefulWidget {
  final Function(String, String, DateTime) onSubmit;

  const AddTodoForm({required this.onSubmit, super.key});

  @override
  _AddTodoFormState createState() => _AddTodoFormState();
}

class _AddTodoFormState extends State<AddTodoForm> {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  DateTime? _selectedDate;

  // Function to submit the form
  void _submitForm() {
    if (_titleController.text.isEmpty ||
        _descriptionController.text.isEmpty ||
        _selectedDate == null) {
      return; // Don't submit if any field is empty
    }

    widget.onSubmit(
      _titleController.text,
      _descriptionController.text,
      _selectedDate!,
    );

    Navigator.of(context).pop(); // Close the bottom sheet after submission
  }

  // Function to show date picker
  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2100),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectedDate = pickedDate;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextField(
            decoration: const InputDecoration(labelText: 'Title'),
            controller: _titleController,
          ),
          TextField(
            decoration: const InputDecoration(labelText: 'Description'),
            controller: _descriptionController,
            maxLines: 3,
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Text(
                  _selectedDate == null
                      ? 'No Date Chosen!'
                      : 'Picked Date: ${DateFormat.yMMMd().format(_selectedDate!)}',
                ),
              ),
              TextButton(
                onPressed: _showDatePicker,
                child: const Text(
                  'Choose Date',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: _submitForm,
            child: const Text('Add Task'),
          ),
        ],
      ),
    );
  }
}
