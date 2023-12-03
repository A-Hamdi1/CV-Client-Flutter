import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class LocalisationPage extends StatefulWidget {
  @override
  _LocalisationPageState createState() => _LocalisationPageState();
}

class _LocalisationPageState extends State<LocalisationPage> {
  late GoogleMapController mapController;
  late LocationData currentLocation = LocationData.fromMap({
    "latitude": 34.75734289086922,
    "longitude": 10.77214426712859,
  }); // Initialize with default values

  @override
  void initState() {
    super.initState();
    _getLocation();
  }

  void _getLocation() async {
    var location = Location();
    try {
      currentLocation = await location.getLocation();
      mapController.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
            target: LatLng(
              currentLocation.latitude ?? 0.0,
              currentLocation.longitude ?? 0.0,
            ),
            zoom: 16.0,
          ),
        ),
      );

      // Clear existing markers
      setState(() {
        markers.clear();
      });

      // Add a new marker for the current location
      setState(() {
        markers.add(
          Marker(
            markerId: MarkerId('currentLocation'),
            position: LatLng(
              currentLocation.latitude ?? 0.0,
              currentLocation.longitude ?? 0.0,
            ),
            infoWindow: InfoWindow(title: 'My Localisation'),
            icon: BitmapDescriptor.defaultMarker,
          ),
        );
      });
    } catch (e) {
      print("Error getting location: $e");
    }
  }

  Set<Marker> markers = {}; // Define a set to hold markers

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Current Localisation'),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(
            currentLocation.latitude ?? 34.75734289086922,
            currentLocation.longitude ?? 10.77214426712859,
          ),
          zoom: 12.0,
        ),
        markers: markers,
        onMapCreated: (GoogleMapController controller) {
          mapController = controller;
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _getLocation();
        },
        child: Icon(Icons.my_location),
      ),
    );
  }
}

