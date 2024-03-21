import 'package:adaptaive_layout_practice/views/widgets/custom_drawer.dart';
import 'package:adaptaive_layout_practice/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart'; // Importing Flutter's Material Design library

class HomeView extends StatefulWidget {
  // Declaring a StatelessWidget named HomeView
  const HomeView({super.key});
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  // Defining the constructor with required super.key parameter
  @override
  Widget build(BuildContext context) {
    // Overriding the build method to return a Widget
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      // Returning Scaffold widget as the base structure
      appBar: AppBar(
        // Adding AppBar as the app's top bar
        backgroundColor: Colors.black, // Setting the background color to black
        leading: IconButton(
            onPressed: () {
              scaffoldKey.currentState!.openDrawer(); // Opening the drawer
            },
            icon: const Icon(
              // Adding a leading icon on the left side of the AppBar
              Icons.menu_rounded, // Using the rounded menu icon
              color: Colors.white, // Setting the icon color to white
            )),
      ),
      body:
          const HomeViewBody(), // Passing HomeViewBody as the main content area
    );
  }
}
