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
  
  
    return Container(
      child:GoogleMap(
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