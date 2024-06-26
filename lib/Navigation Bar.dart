import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _pageIndex = 0;
  final List<Widget> _pages = [
    HomeScreen(),
    MessageScreen(),
    AddScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_pageIndex],
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Colors.teal,
        backgroundColor: Colors.transparent,
        color: Colors.teal,
        height: 60,
        index: _pageIndex,
        items: <Widget>[
          Icon(Icons.home, color: Colors.white, size: 30),
          Icon(Icons.message, color: Colors.white, size: 30),
          Icon(Icons.add, color: Colors.white, size: 30),
          Icon(Icons.notifications, color: Colors.white, size: 30),
          Icon(Icons.person, color: Colors.white, size: 30),
        ],
        onTap: (index) {
          setState(() {
            _pageIndex = index;
          });
        },
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Hy,',style: TextStyle(fontSize: 30,color: Colors.redAccent),),
          Text('i am INAMULLAH',style: TextStyle(fontSize: 30,color: Colors.green),),
        ],
      ),
    );
  }
}

class MessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Ther is my new Project',style: TextStyle(color: Colors.blueAccent,fontSize: 30),),
          Text('Bottom Navigation Bar ',style: TextStyle(color: Colors.lightBlueAccent,fontSize: 30),),
        ],
      ),
    );
  }
}

class AddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Used Package',style: TextStyle(fontSize: 30,color: Colors.cyan),),
          Text('Curved NavigationBar',style: TextStyle(fontSize: 30,color: Colors.cyan),),
        ],
      ),
    );
  }
}

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Thankyou',style: TextStyle(fontSize: 30,color: Colors.amber),),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('INAMULLAH',style: TextStyle(fontSize: 30,color: Colors.green),),
          Text('About me',style: TextStyle(fontSize: 15,color: Colors.black38),),
          SizedBox(height: 20,),
          Text('I am Flutter Develper',style: TextStyle(fontSize: 15,color: Colors.redAccent),),
          SizedBox(height: 20,),
          Text('Follow me',style: TextStyle(fontSize: 20,color: Colors.black),),
          Text('for More Updates',style: TextStyle(fontSize: 20,color: Colors.teal),),
        ],
      ),
    );
  }
}