import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSrceen extends StatefulWidget{
  @override
  _MapScreenState createState()=>_MapScreenState();

}
class _MapScreenState extends State<MapSrceen>{
  static const _initialCameraPosition = CameraPosition(
    target: LatLng(37.773972, -122.431297),
    zoom: 11.5,
  );
 late GoogleMapController _googleMapController;
  late Marker _origin;
  late Marker _destination;
 
  @override
  void dispose() {
    _googleMapController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context){
    var destination ;
    var _origin;
  
  
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Position'),
        actions: [
           if (_origin != null)
            TextButton(
              
              onPressed: () => _googleMapController.animateCamera(
                CameraUpdate.newCameraPosition(
                  CameraPosition(
                    target: _origin.position,
                    zoom: 14.5,
                    tilt: 50.0,
                    
                  ),
                ),
              ),
              style: TextButton.styleFrom(
                primary: Colors.green,
                textStyle: const TextStyle(fontWeight: FontWeight.w600),
              ),
              child: const Text('ORIGIN' ),
            ),
          
          if (destination != null)
            TextButton(
              onPressed: () => _googleMapController.animateCamera(
                CameraUpdate.newCameraPosition(
                  CameraPosition(
                    target: _destination.position,
                    zoom: 14.5,
                    tilt: 50.0,
                  ),
                ),
              ),
              style: TextButton.styleFrom(
                primary: Colors.blue,
                textStyle: const TextStyle(fontWeight: FontWeight.w600),
              ),
              child: const Text('DEST'),
            )
        ],
       
      ),
      body:GoogleMap(
        myLocationButtonEnabled: false,
        zoomControlsEnabled: false,
        initialCameraPosition: _initialCameraPosition,
        onMapCreated: (controller)=>_googleMapController=controller,
         markers: {
              if (_origin != null) _origin,
              if (destination != null) _destination
            },
             onLongPress: _addMarker,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.black,
        onPressed: ()=>_googleMapController.animateCamera(
          CameraUpdate.newCameraPosition(_initialCameraPosition),
          ),
          child: const Icon(Icons.center_focus_strong),
      ),
    );
  }
  void _addMarker(LatLng pos){ 

    var other;
    other = null;
    if (_origin == other || (_origin != other && _destination != other)) {
 setState(() {
        _origin = Marker(
          markerId: const MarkerId('origin'),
          infoWindow: const InfoWindow(title: 'Origin'),
          icon:
              BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
          position: pos,
        );
        
      });
    } else{
        setState(() {
        _destination = Marker(
          markerId: const MarkerId('destination'),
          infoWindow: const InfoWindow(title: 'Destination'),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
          position: pos,
        );
      });
    }
}
}