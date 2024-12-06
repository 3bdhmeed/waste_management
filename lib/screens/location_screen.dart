import 'package:flutter/material.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Location",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          // Map placeholder (replace this with Google Maps or other map widget)
          Container(
            height: screenHeight,
            width: screenWidth,
            color: Colors.grey.shade300,
            child: const Center(
              child: Text(
                "Map Placeholder",
                style: TextStyle(fontSize: 18, color: Colors.black54),
              ),
            ),
          ),
          // Search bar overlay
          Positioned(
            top: screenHeight * 0.05,
            left: screenWidth * 0.05,
            right: screenWidth * 0.05,
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(Icons.search, color: Colors.grey),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search for a location...",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Action buttons (bottom)
          Positioned(
            bottom: 20,
            left: screenWidth * 0.05,
            right: screenWidth * 0.05,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(
                  heroTag: "current_location",
                  onPressed: () {
                    // Logic to fetch and center on user's current location
                  },
                  backgroundColor: Colors.green,
                  child: const Icon(Icons.my_location, color: Colors.white),
                ),
                FloatingActionButton(
                  heroTag: "zoom_out",
                  onPressed: () {
                    // Logic to zoom out on the map
                  },
                  backgroundColor: Colors.green,
                  child: const Icon(Icons.zoom_out, color: Colors.white),
                ),
                FloatingActionButton(
                  heroTag: "zoom_in",
                  onPressed: () {
                    // Logic to zoom in on the map
                  },
                  backgroundColor: Colors.green,
                  child: const Icon(Icons.zoom_in, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}