import 'package:flutter/material.dart';
import 'package:homeservice/home.dart';
import 'package:homeservice/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const HomeServicing(),
    );
  }
}

class HomeServicing extends StatefulWidget {
  const HomeServicing({ Key? key }) : super(key: key);

  @override
  State<HomeServicing> createState() => _HomeServicingState();
}

class _HomeServicingState extends State<HomeServicing> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         
          Container(color: Colors.blue[200],
            alignment: Alignment.center,
            child: Column(children: const [
               SizedBox(height: 30,),
               CircleAvatar(
              maxRadius: 50,
              child:
             
             Icon(Icons.home_work_outlined, size: 40,),
              ),
              
    
          
          SizedBox(height: 20,),
          Text("HOME SERVICES PROVIDER"),
          SizedBox(height: 50,),
            ],) ),

          
          Container(
            
            decoration: const BoxDecoration(
              // color: Colors.orange,
               borderRadius: BorderRadius.only(topLeft: Radius.circular(70), topRight: Radius.circular(70),bottomLeft: Radius.circular(70),bottomRight: Radius.circular(70))
            ),
            child: Form(
              key: _formKey,
              child: 
             Column(
              children: [
                SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsets.only(left: 70,right: 70),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Mobile Number",
                      icon: Icon(Icons.mobile_friendly)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70, right: 70),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Password",
                      icon: Icon(Icons.lock)
                    ),
                  ),
                ),SizedBox(height: 20,),
              ],
             )
             

            ),

          ),
           SizedBox(height: 50,),
          ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()) );
          }, child: Text("Login")), 
          SizedBox(height: 60,),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: ((context) => RegisterPage())));
          }, child: Text("Register")),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text("Forgot Password?"),
            TextButton(onPressed: (){}, child: Text("Click here"))
          ])
          
        ],
      ),
    );
  }
}