import 'package:flutter/material.dart';


class SliderView extends StatefulWidget {
  @override
  _SliderViewState createState() => _SliderViewState();
}

class _SliderViewState extends State<SliderView> {
  bool ndidi = false;

  switchNdidi(bool ndidi){
    setState(() {

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Female"),

                Switch(
                    value: ndidi,
                    onChanged: (newNdidi){

                    }),

                Text("Male"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
