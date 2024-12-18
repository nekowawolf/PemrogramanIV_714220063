import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyShared extends StatefulWidget {
  const MyShared({super.key});

  @override
  State<MyShared> createState() => _MySharedState();
}

class _MySharedState extends State<MyShared> {
  late SharedPreferences prefs;
  final _kataController = TextEditingController();
  String? kata = '';

  @override
  void dispose() {
    _kataController.dispose();
    super.dispose();
  }
  
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shared Preferences'),
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _kataController,
              decoration: const InputDecoration(
                border: OutlineInputBorder()
                ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: ()  {
                saveValue();
              }, 
              child: const Text('Save')
              ),
            const SizedBox(height: 20),
            TextField(
              readOnly: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: kata,
                ),
            ),
             const SizedBox(height: 10),
            ElevatedButton(
              onPressed: ()  {
                getValue().then((value){
                  setState(() {
                    kata = value ?? 'null';
                  });
                });
              }, 
              child: const Text('Get Value')
              ),
              const SizedBox(height: 5),
            ElevatedButton(
              onPressed: ()  {
                deleteValue();
              }, 
              child: const Text('Delete Value')
              ),
          ],
        ),
      )
    );
  }

  saveValue() async {
    prefs = await SharedPreferences.getInstance();
    prefs.setString('kata', _kataController.text);
    setState(() {
      kata = _kataController.text;
    });
    _kataController.clear();
  }

  getValue() async {
    prefs = await SharedPreferences.getInstance();
    String? kata = prefs.getString('kata');
    return kata;
  }

  deleteValue() async {
    prefs = await SharedPreferences.getInstance();
    prefs.remove('kata');
    kata = '';
    setState(() {}
    );
  }
}