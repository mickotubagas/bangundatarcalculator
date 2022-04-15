import 'package:flutter/material.dart';
import 'package:bangundatarcalculator/textfield.dart';
import 'dart:math';

class CalculateResult extends StatefulWidget {
  const CalculateResult({Key? key}) : super(key: key);

  @override
  _CalculateResultState createState() => _CalculateResultState();
}

class _CalculateResultState extends State<CalculateResult> {

  List<String> shapes =  ['Square', 'Rectangle', 'Triangle', 'Circle',
    'Parallelogram', 'Trapezoid'];
  String currentShape = '';
  String result= '0';
  String result1= '0';
  double width = 0;
  double height = 0;
  double side = 0;
  double diameter = 0;

  final TextEditingController widthController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  final TextEditingController sideController = TextEditingController();
  final TextEditingController diameterController = TextEditingController();

  @override
  void initState() {

    super.initState();
    result = '0';
    result1 = '0';
    currentShape = 'Square';
    widthController.addListener(updateWidth);
    heightController.addListener(updateHeight);
    sideController.addListener(updateSide);
    diameterController.addListener(updateDiameter);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        margin:const EdgeInsets.only(top:15.0),
        child: Column(children: <Widget>[
          //dropdown
          DropdownButton<String>(
              value:currentShape,
              items:shapes.map((String value) {
                return DropdownMenuItem<String>(
                  value:value,
                  child: Text(value,
                    style: const TextStyle(fontSize: 24.0),),
                );
              }).toList(),
              onChanged:(shape){
                setState(() {
                  currentShape = shape??'Square';
                });
              }),
          //width
          InputTextField(widthController, 'Width'),
          //height
          InputTextField(heightController, 'Height'),
          //side
          InputTextField(sideController, 'Side'),
          //diameter
          InputTextField(diameterController, 'Diameter'),
          Container(
            margin: const EdgeInsets.all(1.0),
            child:ElevatedButton(
              child:const Text('Calculate',
                  style: TextStyle(fontSize: 18.0)),
              style: ElevatedButton.styleFrom(primary: Colors.deepOrange),
              onPressed:()=> [calculateArea(),calculatePerimeter()],
            ),
          ),
          Padding(padding: const EdgeInsets.all(8.0),
            child: Text('the area is ' + result,
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.green[700],
              ),),
          ),
          Padding(padding: const EdgeInsets.all(8.0),
            child:
            Text('the perimeter is ' + result1,
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.green[700],
              ),),
          )
        ],)
    );
  }

  void calculateArea() {
    double area;

    if (currentShape == 'Square') {
    area = side * side;
    }
    else if (currentShape == 'Rectangle') {
      area = width * height;
    }
    else if (currentShape == 'Triangle') {
      area = width * height / 2;
    }
    else if (currentShape == 'Circle') {
      area = (diameter / 2) * (diameter / 2) * 3.14 ;
    }
    else if (currentShape == 'Parallelogram') {
      area = width * height ;
    }
    else if (currentShape == 'Trapezoid') {
      area = 0.5 * (width + side) * height ;
    }
    else {
      area = 0;
    }
    setState(() {
      result = area.toStringAsFixed(2);
    });
  }

  void calculatePerimeter() {
    double perimeter, phytagoras, raw, raw1;

    if (currentShape == 'Square') {
    perimeter = side * 4;
    }
    else if (currentShape == 'Rectangle') {
      perimeter = (width*2)+(height*2);
    }
    else if (currentShape == 'Triangle') {
      raw = (width*width)+(height*height);
      phytagoras = sqrt(raw);
      perimeter = (phytagoras*2)+width;
    }
    else if (currentShape == 'Circle') {
      perimeter = diameter * 3.14 ;
    }
    else if (currentShape == 'Parallelogram') {
      if (side == 0) {
        perimeter = 0;
      } else {
        perimeter = (width*2)+(side*2);
      }
    }
    else if (currentShape == 'Trapezoid') {
      raw1 = (width - side) / 2;
      raw = (raw1*raw1)+(height*height);
      phytagoras = sqrt(raw);
      perimeter = width + (phytagoras * 2) + side;
    }
    else {
      perimeter = 0;
    }
    setState(() {
      result1 = perimeter.toStringAsFixed(2);
    });
  }

  void updateWidth() {
    setState(() {
      if (widthController.text != '') {
        width = double.parse(widthController.text);
      }
      else {
        width = 0;
      }
    });
  }

  void updateHeight() {
    setState(() {
      if (heightController.text != '') {
        height = double.parse(heightController.text);
      }
      else {
        height = 0;
      }
    });
  }

  void updateSide() {
    setState(() {
      if (sideController.text != '') {
        side = double.parse(sideController.text);
      }
      else {
        side = 0;
      }
    });
  }

  void updateDiameter() {
    setState(() {
      if (diameterController.text != '') {
        diameter = double.parse(diameterController.text);
      }
      else {
        diameter = 0;
      }
    });
  }
}