import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen()
    );
  }
 }

 class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState()=>
  _HomeScreenState();
 }

 class _HomeScreenState extends State<HomeScreen>{
  var emailControlle =
  TextEditingController();
  var pwdilControlle =
  TextEditingController();
  
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: ListView(
      padding: const EdgeInsets.all(30),
      //crossAxisAlignment:
      //CrossAxisAlignment.center,
       children:[
       Image.asset(
         'assets/coffee.jpg',
         height:70,
         width:770,
        ),
        const SizedBox(height:120),
        const Text(
          "Welcome back",
          style:TextStyle(color:Colors.red,fontWeight:FontWeight.bold,fontSize:20,),

        ),
        TextFormField(
          controller:emailControlle,
          decoration: InputDecoration(
          prefix:Icon(
            Icons.mail,
            color:Colors.black,
          ),
          hintText: "Email/phonenumber",
          ),
          ),
        TextFormField(
          controller:pwdilControlle,
          decoration:InputDecoration(
            prefix:Icon(Icons.lock,color:Colors.black,),
            hintText:"password"
          ),
        ),
        Row(children: [
          Checkbox(
            value: false,
            onChanged: (v){},
          ),
          const Text(
            "Remember me",
            style: TextStyle(color:Colors.pink),
          ),
          const Spacer(),
          TextButton(
            onPressed:(){},
            child:const Text("Forget Password?",
            style:TextStyle(color:Colors.pink),
             )
          ),
        ],
        ),
        SizedBox(
          height:40,
        ),
        ElevatedButton(
          onPressed:() {},
          style:ElevatedButton.styleFrom(backgroundColor:Colors.pink),
          child: const Text("Log In",
          style:TextStyle(
            color:Colors.white
          ),
        ),
        ),
        const SizedBox(height:20),
        Align(alignment: Alignment.center,
        child:const Text("or Login with",),
        ),
        const SizedBox(height:20),
       Row(
         mainAxisAlignment: MainAxisAlignment.center,
        children:[
           Image.asset('assets/1.jpg',
           height:40,),

           SizedBox(width:20),
           Image.asset('assets/2.jpg',height:40,),

           SizedBox(width:20),
           Image.asset('assets/3.jpg',height:40,),
         ],
        ),
        const SizedBox(height:10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            const Text("Don't have an account?"),
            TextButton(
              onPressed:(){},
              child:const Text("Sign up",style:TextStyle(color:Colors.pink)),
            ),
          ]
        )
       ]
    )
  );
  }
 }