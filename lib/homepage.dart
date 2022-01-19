import 'package:flutter/material.dart';
import 'package:novel/pages/author.dart';
import 'package:novel/pages/book.dart';
import 'package:novel/pages/genre.dart';
import 'package:novel/pages/publisher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 140,),

              Image.asset('assets/back4.png'),

              const SizedBox(height: 40,),

              const Center(
                child:  Text('Flutter on Back4app - Association',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                ),
              ),
              const SizedBox(height: 10,),

              RaisedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const AddGenre()));
              },
                  color: Colors.blueAccent,
                  child: const Center(child: Text('Add Genre', style: TextStyle(color: Colors.white),))),

              const SizedBox(height: 10,),

              RaisedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Publisher()));
              },
                  color: Colors.blueAccent,
                  child: const Center(child: Text('Add Publisher', style: TextStyle(color: Colors.white),))),

              const SizedBox(height: 10,),

              RaisedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Author()));
              },
                  color: Colors.blueAccent,
                  child: const Center(child: Text('Add Author', style: TextStyle(color: Colors.white),))),

              const SizedBox(height: 10,),

              RaisedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Book()));
              },
                  color: Colors.blueAccent,
                  child: const Center(child: Text('Add Book', style: TextStyle(color: Colors.white),))),

              const SizedBox(height: 10,),

              RaisedButton(onPressed: (){},
                  color: Colors.blueAccent,
                  child: const Center(child: Text('List Publisher/Book', style: TextStyle(color: Colors.white),))),


            ],
          ),
        ),
      ),
    );
  }
}
