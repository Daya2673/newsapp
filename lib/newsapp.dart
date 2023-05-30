import 'package:flutter/material.dart';
class news extends StatefulWidget {
  const news({Key? key}) : super(key: key);

  @override
  State<news> createState() => _newsState();
}

class _newsState extends State<news> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        title: Center(child: Text('News App'),
        ),
      ),
body: Column(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image:NetworkImage('https://image.shutterstock.com/z/stock-vector-illustration-of-indian-train-752645389.jpg'),fit: BoxFit.cover, )
      ),
    ),
    SizedBox(height: 10),
    Container(child: Text('Train',style: TextStyle(backgroundColor: Colors.blue,color: Colors.yellowAccent,fontWeight: FontWeight.bold,fontSize: 12,),)),
    SizedBox(
      height: 10,
    ),
    Text('Indian railway')
  ],
),

    );
  }
}
