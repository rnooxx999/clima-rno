import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Location{
double lat;
double log;

Future<void> getCurrentLocation()async{
try{
Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
lat = position.latitude;
log = position.longitude;

}
catch(e){print("can't");}
}

}