import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
 
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey[200],
        body: SearchPage(),
      )
    );
  }
}


class  SearchPage  extends StatelessWidget  {
  var  cityControlle = TextEditingController();
  Widget build(BuildContext context) {

    return  Column(
      mainAxisAlignment:MainAxisAlignment.center ,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Center(
          child: Container(
            child: Image(
            image: AssetImage('images/rian.gif' ,
             ),
            fit: BoxFit.none,
            ),
            width: 300,
            height: 300,
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 32 , right: 32),
          child: Column(
            children: <Widget>[
              Text('Search' , style: TextStyle(
                fontSize: 23
              ),) ,
              Text('City') ,
              SizedBox(height: 24,) ,
               TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search) ,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10)
                      ),
                      borderSide: BorderSide(
                        color: Colors.greenAccent ,
                        style: BorderStyle.solid , 
                      )
                    ) ,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10)
                        ),
                      borderSide: BorderSide(
                        color: Colors.black ,
                        style: BorderStyle.solid
                      )
                    ) ,
                    hintText:  "City Name" ,
                    helperStyle: TextStyle(
                      color: Colors.black ,
                    )
                ),
                style: TextStyle(
                  color: Colors.black
                ),
               ) ,
               SizedBox(height: 50,) ,
               Container(
                 width: double.infinity,
                 height: 50,
                  child: FlatButton(
                   shape:  new RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)) ,
                   ),
                   onPressed: (){},
                   child: Text('Search' , style:TextStyle(color: Colors.white ,),),
                   color: Colors.blue,
                    ),

               )
            ],
          ),
        )
      ],
    );
    }
  }

