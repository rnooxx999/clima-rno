import 'package:http/http.dart' as http;
import 'dart:convert';


class NetworkHelper {

NetworkHelper(this.url);
final String url;

Future getData()async{
http.Response response =await http.get(url);
print(response.statusCode);
if(response.statusCode == 200){
String data = response.body;
//var decotedData = jsonDecode(data);
  //return decotedData;

return jsonDecode(data);
}else{}
}
}