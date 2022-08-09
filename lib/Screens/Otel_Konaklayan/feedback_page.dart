import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  // const MyWidget({Key? key}) : super(key: key);
  static const routeName = 'feedbackpage';

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final webController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('New Screen'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Web için geri bildirim",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              controller: webController,
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                prefixIcon: Icon(
                  Icons.feedback,
                  color: Theme.of(context).primaryColor,
                ),
                labelText: "Geri bildiriminizi giriniz",
                labelStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
                hintText: "Geri Bildirim",
                hintStyle: const TextStyle(
                  fontSize: 18,
                ),
                //errorText: _submitted ? mailCheck(_emailController) : null,
              ),
              onChanged: (_) => setState(
                () {},
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Mobile için geri bildirim",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              controller: webController,
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                prefixIcon: Icon(
                  Icons.feedback,
                  color: Theme.of(context).primaryColor,
                ),
                labelText: "Geri bildiriminizi giriniz",
                labelStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
                hintText: "Geri Bildirim",
                hintStyle: const TextStyle(
                  fontSize: 18,
                ),
                //errorText: _submitted ? mailCheck(_emailController) : null,
              ),
              onChanged: (_) => setState(
                () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
