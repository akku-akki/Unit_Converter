import 'package:flutter/material.dart';

class time extends StatefulWidget {
  @override
  _timeState createState() => _timeState();
}

class _timeState extends State<time> {
  var lengthValues = "seconds";
  var _length = ["seconds","minutes","hours"];
  var _converted_length = ["seconds","minutes","hours"];
  var newValueChanged = "seconds";
  double input ;
  double output;

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var lengthValues = "seconds";
    var newValueChanged = "seconds";
    input = 0;
    output = 0;
    convertTheValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      resizeToAvoidBottomPadding: false ,
      appBar: AppBar(
        title: Text("Length",textAlign: TextAlign.center,
      ),
      
    ),
    body: SingleChildScrollView(
          child: Container(
        height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
        color: Colors.orange[100],
        padding: EdgeInsets.all(20.0),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //input dropdown####
            DropdownButton<String>(
              items: _length.map((String dropDownItems){
                return DropdownMenuItem<String>(
                  value: dropDownItems,
                  child: Text(dropDownItems,style: TextStyle(fontSize: 30)),
                );
              }).toList(),
              onChanged: (String newValue){
                setState(() {
                  this.lengthValues = newValue;
                  convertTheValue();
                });
                
              },
              value: lengthValues,
            ),
            //input####
            TextField(
              decoration: InputDecoration(
                
                labelText: "Input",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                
              ),
              keyboardType: TextInputType.number,
              onChanged: (String changedValue){
                setState(() {
                  input = double.parse(changedValue);
                  convertTheValue();
                });
              },
            ),
            //icon####
            RotatedBox(
              quarterTurns: 1,
              child: Icon(Icons.compare_arrows,
              size: 40,),
              
            ),
            //output dropdown####
            DropdownButton<String>(
              
              items: _converted_length.map((String dropDownItems){
                return DropdownMenuItem<String>(
                  
                  value: dropDownItems,
                  child: Text(dropDownItems,style: TextStyle(fontSize: 30),),
                );
              }).toList(),
              onChanged: (String newValue){
                setState(() {
                  this.newValueChanged = newValue;
                  convertTheValue();
                });
                
              },
              value: newValueChanged,
            ),
            //output####
            InputDecorator(
              child: Text(output.toString(),style: TextStyle(fontSize: 25),),
              decoration: InputDecoration(
                labelText: "Output",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0.0)
                )
              ),
            )
          ],
          ),
        ),
    )
      ,
    
    );
  }
 
 convertTheValue(){
   if (lengthValues == "seconds"&& newValueChanged =="seconds"){
     setState(() {
      output = input; 
     });
   }
   else if (lengthValues == "seconds"&& newValueChanged == "minutes"){
      setState(() {
        output = input * 0.0166667;
      });
    }
    else if (lengthValues == "seconds"&& newValueChanged == "hours"){
      setState(() {
       output = input *0.002777; 
      });
    }
    else if (lengthValues == "minutes"&& newValueChanged == "seconds"){
      setState(() {
       output = input *60; 
      });
    }
    else if (lengthValues == "minutes"&& newValueChanged == "minutes"){
      setState(() {
       output = input; 
      });
      
    }
    else if (lengthValues == "minutes"&& newValueChanged == "hours"){
      setState(() {
       output = input*0.0166667; 
      });
    }
    else if (lengthValues == "hours"&& newValueChanged == "seconds"){
      setState(() {
       output=input*3600; 
      });
    }
    else if (lengthValues == "hours"&& newValueChanged == "minutes"){
      setState(() {
       output = input*60; 
      });
    }
    else if (lengthValues == "hours"&& newValueChanged == "hours"){
      setState(() {
        output = input;
      });
    }
 }

}