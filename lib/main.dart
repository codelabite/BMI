import 'package:flutter/material.dart';
import 'package:ourbmi/SliderView.dart';


void main(){
  runApp(FireBaseApp());
}

class FireBaseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FireBaseApp",
      theme: ThemeData(
          primarySwatch: Colors.cyan,
          canvasColor: Colors.cyan[50]
      ),
      debugShowCheckedModeBanner: false,
      home:
      SliderView(),
      //HomeScreen(),
    );
  }
}


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  TextEditingController massController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  double BMI = 0;

  CalculateBMI(){
    double mass = double.parse(massController.text);
    double height = double.parse(heightController.text);
    setState(() {
      double result = (mass/(height * height));
      BMI = result;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Our BMI App',
          style: TextStyle(
              color: Colors.white
          ),
        ),

      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, right: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text("Body Mass",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),),
                    SizedBox(
                      height: 10,
                    ),
                    Card(
                      elevation: 5,
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.white,
                        child: TextField(
                          style: TextStyle(
                              fontSize: 70,
                              fontWeight: FontWeight.bold
                          ),
                          autofocus: true,
                          keyboardType: TextInputType.number,
                          controller: massController,
                          decoration: InputDecoration(
                              border: InputBorder.none
                          ),
                        ),
                      ),
                    )
                  ],
                ),

                Column(
                  children: <Widget>[
                    Text("Body Height",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),),
                    SizedBox(
                      height: 10,
                    ),
                    Card(
                      elevation: 5,
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.white,
                        child: TextField(
                          style: TextStyle(
                              fontSize: 70,
                              fontWeight: FontWeight.bold
                          ),
                          autofocus: true,
                          keyboardType: TextInputType.number,
                          controller: heightController,
                          decoration: InputDecoration(
                              border: InputBorder.none
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),

          SizedBox(
            height: 20,
          ),

          RaisedButton(
            color: Colors.cyan,
            textColor: Colors.white,
            child: Text("View Result",
              style: TextStyle(
                  color: Colors.white,
                fontSize: 30
              ),),
            onPressed: (){
              CalculateBMI();
              print("I mass");
            },
          ),
          SizedBox(
            height: 20,
          ),
          Center(
              child: Text("Your BMI is",
                  style: TextStyle(
                  color: Colors.cyan,
                    fontSize: 30
              ),
              )),
          Center(
              child: Text("${double.parse(BMI.toStringAsFixed(3))}",
                style: TextStyle(
                    color: Colors.cyan,
                    fontSize: 30
                ),)),
      Center(
      child: Text("Kilogram per meter square",
       ),
      )
        ],
      )
    );
  }
}
