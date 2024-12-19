import 'package:flutter/material.dart';
import 'package:to_do_list_app/models/todo.dart';

class AddListScreen extends StatefulWidget {
  const AddListScreen({super.key});

  @override
  State<AddListScreen> createState() => _AddListScreenState();
}

class _AddListScreenState extends State<AddListScreen> {
  var _isPinned = false;
  final _labels = [
    "Personal",
    "Work",
    "Finance",
    "Other",
  ];

  final TextEditingController _textEditingController = TextEditingController();

  final List<ToDo> _tasksList = [];

  var _selectedLabel = "";

  var _textValue = "";

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: screenSize.height * 0.09,
        elevation: 0,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.all(27),
            child: InkWell(
              onTap: () {
                setState(() {
                  _isPinned = !_isPinned;
                });
              },
              child: Container(
                width: _isPinned
                    ? screenSize.width * 0.2
                    : screenSize.width * 0.15,
                decoration: BoxDecoration(
                  border: Border.all(width: 1.5),
                  borderRadius: BorderRadius.circular(5),
                  color:
                      _isPinned ? const Color(0xFFE8DFF8) : Colors.transparent,
                ),
                child: Row(
                  children: [
                    const Icon(Icons.pin_drop),
                    const SizedBox(width: 3),
                    Text(
                      _isPinned ? "Pinned" : "Pin",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  const TextField(
                    decoration: InputDecoration(
                      hintText: "Title",
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  _tasksList.isEmpty
                      ? Expanded(
                          child: Center(
                            child: Text(
                              "No todo(s) yet...",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ),
                        )
                      : Expanded(
                          child: ListView.builder(
                            itemCount: _tasksList.length,
                            itemBuilder: (context, index) {
                              final task = _tasksList[index];
                              return ListTile(
                                leading: Checkbox.adaptive(
                                  value: task.isDone,
                                  onChanged: (value) {
                                    setState(() {
                                      task.isDone = value!;
                                    });
                                  },
                                ),
                                title: TextFormField(
                                  minLines: 1,
                                  maxLines: 10,
                                  initialValue: task.text,
                                  onChanged: (value) {
                                    task.text = value;
                                    _textValue = value;
                                  },
                                  style: TextStyle(
                                    decoration: task.isDone
                                        ? TextDecoration.lineThrough
                                        : TextDecoration.none,
                                  ),
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                ),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _tasksList.removeAt(index);
                                        });
                                      },
                                      icon: const Icon(Icons.close,
                                          color: Colors.red),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                  TextField(
                    controller: _textEditingController,
                    onChanged: (value) {
                      _textValue = value;
                    },
                    decoration: InputDecoration(
                      hintText: "Enter a note...",
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                        onPressed: () {
                          if (_textValue.isNotEmpty) {
                            if (_textValue.isNotEmpty) {
                              setState(() {
                                if (_textValue.isNotEmpty) {
                                  _tasksList.add(ToDo(
                                    text: _textValue,
                                  ));
                                }
                                _textEditingController.clear();
                                _textValue = "";
                              });
                            }
                          }
                        },
                        icon: const Icon(Icons.add),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
            const Divider(),
            SizedBox(height: screenSize.height * 0.02),
            Column(
              children: [
                Row(
                  children: [
                    Text("Choose a Label",
                        style: Theme.of(context).textTheme.titleLarge)
                  ],
                ),
                SizedBox(height: screenSize.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ..._labels.map((label) {
                      return ChoiceChip(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        label: Text(
                          label,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        showCheckmark: true,
                        selected: _selectedLabel == label,
                        onSelected: (value) {
                          setState(() {
                            _selectedLabel = value ? label : "";
                          });
                        },
                      );
                    }),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
