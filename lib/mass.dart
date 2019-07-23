import 'package:flutter/material.dart';

class mass extends StatefulWidget {
  @override
  _massState createState() => _massState();
}

class _massState extends State<mass> {
  var lengthValues = "gram";
  var _length = ["gram","milligram","kilogram"];
  var _converted_length = ["gram","milligram","kilogram"];
  var newValueChanged = "gram";
  double input ;
  double output;

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var lengthValues = "gram";
    var newValueChanged = "gram";
    input = 0;
    output = 0;
    convertTheValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      appBar: AppBar(
        title: Text("Mass",textAlign: TextAlign.center,
        
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
   if (lengthValues == "gram"&& newValueChanged =="gram"){
     setState(() {
      output = input; 
     });
   }
   else if (lengthValues == "gram"&& newValueChanged == "milligram"){
      setState(() {
        output = input * 1000;
      });
    }
    else if (lengthValues == "gram"&& newValueChanged == "kilogram"){
      setState(() {
       output = input *0.001; 
      });
    }
    else if (lengthValues == "milligram"&& newValueChanged == "milligram"){
      setState(() {
       output = input ; 
      });
    }
    else if (lengthValues == "milligram"&& newValueChanged == "gram"){
      setState(() {
       output = input*0.001; 
      });
      
    }
    else if (lengthValues == "milligram"&& newValueChanged == "kilogram"){
      setState(() {
       output = input*0.00001; 
      });
    }
    else if (lengthValues == "kilogram"&& newValueChanged == "gram"){
      setState(() {
       output=input*1000.0; 
      });
    }
    else if (lengthValues == "kilogram"&& newValueChanged == "milligram"){
      setState(() {
       output = input*100000.0; 
      });
    }
    else if (lengthValues == "kilogram"&& newValueChanged == "kilogram"){
      setState(() {
        output = input;
      });
    }
 }

}