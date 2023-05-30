import 'package:flutter/material.dart';
import 'package:newsapp/newsapp.dart';
void main(){
  runApp(MaterialApp(home: newsapp(),
  debugShowCheckedModeBanner: false,));
}
class newsapp extends StatefulWidget {
  const newsapp({Key? key}) : super(key: key);

  @override
  State<newsapp> createState() => _newsappState();
}

class _newsappState extends State<newsapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        title:Center(child:Text('News App'),
        ),
      ),
      body:
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>news(),));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image:NetworkImage('https://tse2.mm.bing.net/th?id=OIP.OVuDv3jO6-cHEMxsWwgxSwHaEA&pid=Api&P=0&h=180'),fit: BoxFit.cover, )
                        ),
                      ),
                       SizedBox(height: 10),
                       Container(child: Text('Flutter',style: TextStyle(backgroundColor: Colors.blue,color: Colors.yellowAccent,fontWeight: FontWeight.bold,fontSize: 12,),)),
                      SizedBox(
                        height: 10,
                      ),
                       Text('its a dart language')
                      ],
                  ),
                ),),
              ),
            ),),
    );
  }
}
