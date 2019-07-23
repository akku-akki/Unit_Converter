import 'package:flutter/material.dart';
import 'length.dart';
import 'mass.dart';
import 'time.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Unit Converter",textAlign: TextAlign.center,),
        backgroundColor: Colors.orange,
      
      ),
      body: SingleChildScrollView(
              child: Container(
          height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
         // color: Colors.orange.withOpacity( 0.4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    top: 100,
                    bottom: 20
                  ),
                  child: Container(
                    padding: EdgeInsets.only(left: 60,right: 60),
                    child: Card(

                      shape: StadiumBorder(),
                      child: Text("Units"
                      ,style: TextStyle(fontSize: 40,
                      fontWeight: FontWeight.normal,)
                      ,textAlign: TextAlign.center,),
                      color: Colors.orangeAccent,
                      
                    ),
                  ),
                  
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      RaisedButton(
                      color: Colors.orangeAccent,
                       shape: StadiumBorder(),
                       onPressed: (){
                       Navigator.push(context, MaterialPageRoute(
                        builder: (context) =>mass()));
                      },
                      child: Row(
                        
                        children: <Widget>[
                          Flexible(
                            flex: 1,
                            child: Icon(Icons.line_weight,size: 30,)),
                          Flexible(
                            flex:2 ,
                           child: Center(
                             child: Text("Mass" , style:TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.normal,
                              fontSize: 25,
                     )),
                           ),
                          ),
                        ],
                      ),
                     ),
                     RaisedButton(
                       
                      color: Colors.orangeAccent,
                       shape: StadiumBorder(),
                       onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                        builder: (context) => length()));
                      },
                      child: Row(
                        
                        children: <Widget>[
                          Flexible(
                            flex: 1,
                            child: Icon(Icons.linear_scale,size: 30,)),
                          Flexible(
                            flex:2 ,
                           child: Center(
                             child: Text("Length" , style:TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.normal,
                              fontSize: 25,
                     )),
                           ),
                          ),
                        ],
                      ),
                     ),
                     RaisedButton(
                      color: Colors.orangeAccent,
                       shape: StadiumBorder(),
                       onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => time()));
                      
                      },
                      child: Row(
                        
                        children: <Widget>[
                          Flexible(
                            flex: 1,
                            child: Icon(Icons.timer,size: 30,)),
                          Flexible(
                            flex:2 ,
                           child: Center(
                             child: Text("Time" , style:TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.normal,
                              fontSize: 25,
                     )),
                           ),
                          ),
                        ],
                      ),
                     ),
                    ],
                  ),
                )
               ],
            ),
        ),
      ) ,
    );
  }
  
}