import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
var data = SystemUiOverlayStyle(
  statusBarColor: const Color.fromARGB(255, 161, 153, 151),
  statusBarBrightness: Brightness.light ,
  statusBarIconBrightness: Brightness.light,
  

);
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(data);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
       
        home: Scaffold(
          appBar: AppBar(
            title:Text('First App',style: TextStyle(color:Colors.yellow,fontSize: 40 ),),centerTitle: true,
            backgroundColor: Colors.blueGrey,
            systemOverlayStyle: data,
          ),
          body: Center(
            child: Text('New Flutter App❤️',style: TextStyle( color: Colors.blue, fontSize: 30,),),
          ),
        ),
      ),
    );
  }
}
