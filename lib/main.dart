import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "My First App",
    home: HomePage(),
  ));
}

// To Create Stateful page - Type STF
// To Create Stateless page - Type STL
// MaterialApp is root widget of the entire app
// Scaffold is the root widget of each individual page

final TextEditingController nameController = new TextEditingController();
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: const Text('My Page', style: TextStyle(color: Colors.white)),
      ),
      body: ListView(children: [
        Text('Hello'),
        Image.network('https://genshin.global/wp-content/uploads/2023/12/ancient-treasures-zhongli-event-official-wallpaper.jpg'),
        TextField(
          controller: nameController,
        ),
        ElevatedButton(onPressed: (){
          print('Button Clicked');
          print(nameController.value.text);
        }, child: Text('Submit'))
      ],),
    );
  }
}
