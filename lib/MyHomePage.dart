import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[200], // Background color of the container
        border: Border.all(color: Colors.grey), // Border around the container
        borderRadius: BorderRadius.circular(10), // Rounded corners for the container
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 16),
          Center(
            child: Image.asset(
              'Rainbow.png', // Replace with your image asset path
              width: 150, // Adjust width as needed
              height: 150, // Adjust height as needed
            ),
          ),
          const SizedBox(height: 16),
        const Text(
            'LGBTQ:',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'LGBTQIA+ stands for lesbian, gay, bisexual, transgender, queer (or sometimes questioning), intersex, asexual, and others.', 
            style: TextStyle(fontSize: 19),
          ),
          const Text(
            'The "plus" represents other sexual identities, including pansexual and Two-Spirit. The first four letters of the acronym have been used since the 1990s, but in recent years there has been an increased awareness of the need to be inclusive of other sexual identities to offer better representation.', 
            style: TextStyle(fontSize: 19),
          ),
        ],
      ),
    ),
    const Center(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'input',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Card(
              elevation: 2,
              margin: EdgeInsets.symmetric(vertical: 8),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '...',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Alam ba sainyo na bading ka',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    const Center(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Card(
              elevation: 2,
              margin: EdgeInsets.symmetric(vertical: 8),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Education:',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Primary:',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Alangilan Central Elementary School',
                      style: TextStyle(fontSize: 19),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Secondary:',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'University of Batangas (JHS and SHS)',
                      style: TextStyle(fontSize: 19),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Tertiary:',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Batangas State University The National Engineering University',
                      style: TextStyle(fontSize: 19),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 85, 171, 221),
        title: const Text(
          'Lgbtq Hub',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: _pages[_currentIndex],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 85, 171, 221),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/p.jpg'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Hello!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('Home'),
              onTap: () {
                setState(() {
                  _currentIndex = 0;
                });
                Navigator.pop(context);
              },
              selected: _currentIndex == 0,
            ),
            ListTile(
              leading: const Icon(Icons.star),
              title: const Text('Info'),
              onTap: () {
                setState(() {
                  _currentIndex = 1;
                });
                Navigator.pop(context);
              },
              selected: _currentIndex == 1,
            ),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text('Membership'),
              onTap: () {
                setState(() {
                  _currentIndex = 2;
                });
                Navigator.pop(context);
              },
              selected: _currentIndex == 2,
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        fixedColor: const Color.fromARGB(255, 85, 171, 221),
        onTap: onTabTapped,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Dictionary",
            icon: Icon(Icons.star),
          ),
          BottomNavigationBarItem(
            label: "Ewan",
            icon: Icon(Icons.school),
          ),
        ],
      ),
    );
  }
}


