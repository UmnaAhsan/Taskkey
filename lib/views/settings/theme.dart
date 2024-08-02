import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_task_app/views/settings/themeChanger.dart';

class dark extends StatefulWidget {
  const dark({super.key});

  @override
  State<dark> createState() => _darkState();
}

class _darkState extends State<dark> {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of <ThemeChanger>(context);
    return Scaffold(appBar: AppBar(title: Text("theme"),),
      body: Column(
        children: [
       RadioListTile<ThemeMode>(
        title:  Text('light Mode'), 
        value: ThemeMode.light, 
        groupValue:themeChanger.themeMode,
        onChanged: themeChanger.setTheme),
         RadioListTile<ThemeMode>(
        title:  Text('Dark  Mode'), 
        value: ThemeMode.dark, 
        groupValue:themeChanger.themeMode,
        onChanged: themeChanger.setTheme),
         RadioListTile<ThemeMode>(
        title:  Text('system Mode'), 
        value: ThemeMode.system, 
        groupValue:themeChanger.themeMode,
        onChanged: themeChanger.setTheme),
        ElevatedButton(onPressed: (){
                  Navigator.pop(context);
        }, child: Text("next"))
        ],
      ),
    );
  }
}