//imported material libraries
import 'package:flutter/material.dart';
//created userinterface class
class UserInterface extends StatelessWidget {
  const UserInterface({super.key});

  @override
  Widget build(BuildContext context) {
    //Task 2.1
    return  Scaffold(
      //appbar
        appBar: AppBar(
          title: Text("Student App", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
         backgroundColor: const Color.fromARGB(255, 255, 156, 7),
        ),
        //body
        body: const Center(
          
          child: Text("Student Details", style: TextStyle(fontSize: 33, color: Colors.black),)
          ),
          //button
        floatingActionButton: FloatingActionButton(onPressed: () {
          //Task 2.2 
        // on click, "Student Details: John Doe, Age: 20, Grade:A" is displayed in the console
          
           Navigator.push(context, MaterialPageRoute(builder: (context) => AboutScreen(),));
           
         const ButtonStyle();
         },
         
        child:Text("Show Details", style: TextStyle(color: Colors.black),), ),
        
        
        backgroundColor: Color.fromARGB(255, 253, 222, 203),
    );
  }
}
// part of task 2.2 
class StudentDetails extends StatelessWidget {
  const StudentDetails({super.key});
  
  get builder => null;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        
      backgroundColor:  Color.fromARGB(255, 253, 222, 203),
      body: Column(
        children: [
          Text("Student Details: John Doe, Age: 20, Grade:A"),
       
        ],
      )
    
    );
    
  }
}
//Task 3.1
//Converting the UserInterface stateless widget into a statefull widget
class UserInterface1 extends StatefulWidget {
  const UserInterface1({super.key});

  Widget build(BuildContext context) {
    //Task1
    return  Scaffold(
      //appbar
        appBar: AppBar(
          title: Text("Student App"),
         backgroundColor: const Color.fromARGB(255, 255, 156, 7),
        ),
        //body
        body: Center(
          child: Column(
            children:[
 Text("Student Details")
            ]
          )
         
          ),
          //button
        floatingActionButton: FloatingActionButton(onPressed: () {
          //Task2 
        // on click, "Student Details: John Doe, Age: 20, Grade:A" is displayed in the console
        print("Student Details: John Doe, Age: 20, Grade:A");
       
           Navigator.push(context, MaterialPageRoute(builder: (context) => AboutScreen(),));
           
         
         },
        child:Text("Show Details"), ),
        backgroundColor: Color.fromARGB(255, 253, 222, 203),
    );
  }
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

//task5.1
class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      
      ),
      body: Center(
        child: Column(
          children: [
            Text("Name: Abbo Fulumera"),
            Text("Student Number: 013"),
            Text("Email: fulumera@gmail.com")
          ],
        ),
      ),
    );
  }
}