import 'package:flutter/material.dart';

class length extends StatefulWidget {
  @override
  _lengthState createState() => _lengthState();
}

class _lengthState extends State<length> {
  var lengthValues = "millimeter";
  var _length = ["millimeter","centimeter","meter"];
  var _converted_length = ["millimeter","centimeter","meter"];
  var newValueChanged = "millimeter";
  double input ;
  double output;

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var lengthValues = "millimeter";
    var newValueChanged = "millimeter";
    input = 0;
    output = 0;
    convertTheValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
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
        child: Column(
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
        )
        ,
      ),
    ),
    );
  }
 
 convertTheValue(){
   if (lengthValues == "millimeter"&& newValueChanged =="millimeter"){
     setState(() {
      output = input; 
     });
   }
   else if (lengthValues == "millimeter"&& newValueChanged == "centimeter"){
      setState(() {
        output = input * 0.1;
      });
    }
    else if (lengthValues == "millimeter"&& newValueChanged == "meter"){
      setState(() {
       output = input *0.001; 
      });
    }
    else if (lengthValues == "centimeter"&& newValueChanged == "millimeter"){
      setState(() {
       output = input *10.0; 
      });
    }
    else if (lengthValues == "centimeter"&& newValueChanged == "centimeter"){
      setState(() {
       output = input; 
      });
      
    }
    else if (lengthValues == "centimeter"&& newValueChanged == "meter"){
      setState(() {
       output = input*0.01; 
      });
    }
    else if (lengthValues == "meter"&& newValueChanged == "millimeter"){
      setState(() {
       output=input*1000.0; 
      });
    }
    else if (lengthValues == "meter"&& newValueChanged == "centimeter"){
      setState(() {
       output = input*100.0; 
      });
    }
    else if (lengthValues == "meter"&& newValueChanged == "meter"){
      setState(() {
        output = input;
      });
    }
 }

}