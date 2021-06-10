import 'package:flutter/material.dart';
class BmiResult extends StatelessWidget {
  final int result;
  final int age;
  final bool isMale;

  BmiResult({@required this.result, @required this.age, @required this.isMale});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: ()=>Navigator.pop(context),
            icon: Icon(Icons.arrow_back_ios)),
        backgroundColor: Colors.redAccent[100],
        centerTitle: true,
        title: Text("BMI Result",style: TextStyle(fontSize: 25.0,color: Colors.white),),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Gender : ${isMale? 'Male': 'Female'}",style: TextStyle(fontWeight: FontWeight.bold),),
            Text("Result : $result",style: TextStyle(fontWeight: FontWeight.bold),),
            Text("Age : $age",style: TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}
