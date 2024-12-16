import 'package:flutter/material.dart';
import 'package:to_do_list_app/utilities/constants.dart';

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

  final _labelIsSelected = false;
  var _selectedLabel = "";

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: screenSize.height * 0.09,
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: kPrimaryColor),
        actions: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: InkWell(
              onTap: () {
                setState(() {
                  _isPinned = !_isPinned;
                });
              },
              child: AnimatedContainer(
                width: screenSize.width * 0.15,
                duration: const Duration(microseconds: 300),
                decoration: BoxDecoration(
                  color: _isPinned ? kPrimaryColor : kSecondaryColor,
                  border: Border.all(color: kPrimaryColor, width: 1.5),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Icon(Icons.pin_drop,
                        color: _isPinned ? kSecondaryColor : kPrimaryColor),
                    const SizedBox(width: 3),
                    Text(
                      "Pin",
                      style: TextStyle(
                          color: _isPinned ? kSecondaryColor : kPrimaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(45),
        child: Column(
          children: [
            const Expanded(
              child: Column(
                children: [],
              ),
            ),
            const Divider(
              color: Colors.black,
            ),
            Column(
              children: [
                const Row(children: [
                  Text("Choose a Label",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
                ]),
                Row(
                  children: [
                    ..._labels.map((label) {
                      return ChoiceChip(
                        label: Text(
                          label,
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        selected: _selectedLabel == label,
                        onSelected: (value) {
                          setState(() {
                            _selectedLabel = value ? label : "";
                          });
                        },
                        selectedColor: Colors.black,
                        color: _selectedLabel == label
                            ? WidgetStateProperty.all(Colors.black)
                            : WidgetStateProperty.all(
                                const Color(0xFFFFFFFF),
                              ),
                        backgroundColor: _selectedLabel == label
                            ? kPrimaryColor
                            : const Color(0xFF9B9B9B),
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
