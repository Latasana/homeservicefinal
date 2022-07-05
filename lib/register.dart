import 'package:flutter/material.dart';
import 'package:homeservice/main.dart';
class RegisterPage extends StatefulWidget {
  const RegisterPage({ Key? key }) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Column(
      children: [ 
        Container(
          height: 250,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.blue[200],
        //  boxShadow: 
        //  [
        //           BoxShadow(
        //               color: Colors.greenAccent[200],
                     
        //               blurRadius: 10.0,
                      
        //             ), ]
        ),
        child: CircleAvatar(
          maxRadius: 50,
          child: Icon(Icons.home_work_outlined, size: 50,),
        ),
      ),
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Full Name",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: TextFormField(
              decoration: 
              InputDecoration(
                labelText: "Mobile Number"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Email"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Create Password"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Select your Location"
              ),
            ),

          ),
         
          SizedBox(height: 30,),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeServicing()));
          }, child: Text("Proceed")),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [ Text("Already registered?"),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: ((context) => HomeServicing())));
          }, child: Text("Login here"))
          
          ],
          ),
          
        ],
      )
      ]

    )
    );
  }
}