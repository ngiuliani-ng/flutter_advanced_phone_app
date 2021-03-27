import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData.dark(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: body(),
    );
  }

  Widget appBar() {
    return AppBar(
      leading: Center(
        child: CircleAvatar(
          foregroundImage: AssetImage("assets/images/avatar.jpg"),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Nicolò Giuliani"),
          Text(
            "Active Now",
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.phone),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.email),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.link),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget body() {
    return Column(
      children: [
        chat(),
        input(),
      ],
    );
  }

  Widget chat() {
    return Expanded(
      child: ListView.builder(
        reverse: true,
        itemCount: 1,
        itemBuilder: (context, index) => sampleMessage(),
      ),
    );
  }

  Widget sampleMessage() {
    return Container();
  }

  Widget privateMode() {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.privacy_tip,
              size: 50,
              color: Colors.white24,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Private Mode",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white24,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget input() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          inputTextField(),
          SizedBox(
            width: 8,
          ),
          inputPhotoFab(),
        ],
      ),
    );
  }

  Widget inputTextField() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
          borderRadius: BorderRadius.circular(32),
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Say something nice",
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }

  Widget inputPhotoFab() {
    return FloatingActionButton(
      child: Icon(Icons.camera_alt),
      backgroundColor: Colors.white,
      onPressed: () {},
      elevation: 0,
    );
  }
}
