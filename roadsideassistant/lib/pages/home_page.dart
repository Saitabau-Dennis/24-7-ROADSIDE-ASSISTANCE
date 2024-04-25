import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showFuelMenu = false;
  bool showTireMenu = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late GoogleMapController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Stack(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              setState(() {
                showFuelMenu = false;
                showTireMenu = false;
              });
            },
            child: GoogleMap(
              onMapCreated: (GoogleMapController controller) {
                _controller = controller;
              },
              initialCameraPosition: CameraPosition(
                target: LatLng(0, 0), // Set your initial position here
                zoom: 14.4746,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              icon: const Icon(Icons.menu, color: Color.fromARGB(255, 7, 180, 17), size: 30.0),
              onPressed: () {
                _scaffoldKey.currentState?.openDrawer();
              },
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              icon: const Icon(Icons.notifications,color: Color.fromARGB(255, 7, 180, 17), size: 30.0),
              onPressed: () {
                // Handle notification button press
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      showFuelMenu = !showFuelMenu;
                      showTireMenu = false;
                    });
                  },
                  backgroundColor: const Color.fromARGB(255, 11, 180, 17),
                  child: const Icon(Icons.local_gas_station),
                ),
                const SizedBox(height: 10), // Add some spacing between the buttons
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      showTireMenu = !showTireMenu;
                      showFuelMenu = false;
                    });
                  },
                  backgroundColor: const Color.fromARGB(255, 11, 180, 17),
                  child: const Icon(Icons.build),
                ),
              ],
            ),
          ),
          if (showFuelMenu || showTireMenu)
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height / 2,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const Expanded(
                      child: Text('Petrol Station Name'),
                    ),
                    Expanded(
                      child: IconButton(
                        icon: const Icon(Icons.call),
                        onPressed: () {
                          // Handle tap
                        },
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                        icon: const Icon(Icons.shopping_cart),
                        onPressed: () {
                          // Handle tap
                        },
                      ),
                    ),
                    const Expanded(
                      child: Text('Distance'),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text('User Name'),
              accountEmail: Text('user@example.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  'U',
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
              decoration: BoxDecoration(color:Color.fromARGB(255, 11, 180, 17)),
            ),
            ListTile(
              leading: const Icon(Icons.home, color: Color.fromARGB(255, 11, 180, 17)),
              title: const Text('Home'),
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
            ListTile(
              leading: const Icon(Icons.person, color: Color.fromARGB(255, 11, 180, 17)),
              title: const Text('Profile'),
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
            ListTile(
              leading: const Icon(Icons.help, color: Color.fromARGB(255, 11, 180, 17)),
              title: const Text('Support'),
              onTap: () {
                Navigator.pushNamed(context, '/support');
              },
            ),
            // Add more ListTiles for more menu items
          ],
        ),
      ),
    );
  }
}