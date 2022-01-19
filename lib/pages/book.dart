import 'package:flutter/material.dart';

class Book extends StatefulWidget {
  const Book({Key? key}) : super(key: key);

  @override
  _BookState createState() => _BookState();
}

class _BookState extends State<Book> {
  final todoController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Book', style: TextStyle(color: Colors.white),),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const SizedBox(height: 60,),

            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: TextFormField(
                controller: TextEditingController(),
                autocorrect: false,
                style: const TextStyle(color: Colors.blue),
                decoration: const InputDecoration(
                  contentPadding:
                  EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
                  labelText: 'Tittle',
                  labelStyle: TextStyle(color: Colors.blue),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.blue,
                        width: 8.0),
                  )
                ),

              ),
            ),
            const SizedBox(height: 20,),

            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: TextFormField(
                controller: TextEditingController(),
                autocorrect: false,
                style: const TextStyle(color: Colors.blue),
                decoration: const InputDecoration(
                    contentPadding:
                    EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
                    labelText: 'Year',
                    labelStyle: TextStyle(color: Colors.blue),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.blue,
                          width: 8.0),
                    )
                ),

              ),
            ),

           const Padding(
              padding:  EdgeInsets.only(left: 350),
              child:  Text('0/4',
              style: TextStyle(color: Colors.grey),
              ),
            ),

            const SizedBox(height: 20,),

            const Text('Publisher',
            style: TextStyle(fontSize: 16),
            )



          ],
        ),
      ),

    );
  }
}
