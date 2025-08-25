import 'package:flutter/material.dart';

class WidgetExampleUI extends StatefulWidget {
  const WidgetExampleUI({super.key});

  @override
  State<WidgetExampleUI> createState() => _WidgetExampleUI();
}

class _WidgetExampleUI extends State<WidgetExampleUI> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        appBar: AppBar(
          //MARK: AppBar
          title: const Text('Example Widget UI App'),
          leading: BackButton(
            //MARK: Back button
            onPressed: () {
              debugPrint('App bar back tapped ....');
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                debugPrint('App bar add tapped ....');
              },
              child: Text('Add'),
            ),
            SizedBox(width: 16), //MARK: Sized box
          ],
        ),
        body: Container(
          // width: 100,
          // height: 100,
          color: Colors.blue,
          padding: EdgeInsets.only(left: 10, right: 10, top: 10),
          child: ListView(
            children: [
              Row(
                children: [
                  Icon(Icons.access_alarm, size: 30, color: Colors.yellow),
                ],
              ),
              Row(
                children: [
                  Baseline( //MARK: Base line
                    baseline: 20.0,
                    baselineType: TextBaseline.alphabetic,
                    child: Text(
                      'Text Widget Text Widget Text Widget Text Widget Text Widget Text Widget Text Widget Text Widget Text Widget Text Widget Text Widget Text',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  Container(
                    //MARK: Container
                    width: 350,
                    height: 100,
                    // color: Colors.red,
                    // padding: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      //MARK: BoxDecoration
                      color: Colors.red,
                      border: Border.all(color: Colors.white),
                    ),
                    child: Center(
                      child: Align( //MARK: Align
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'Container widget bottomRight',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                //MARK: Image
                spacing: 10,
                children: [
                  Image.network(
                    'https://avatars.githubusercontent.com/u/33618522?v=4',
                    width: 100,
                    height: 100,
                  ),
                  Image.asset(
                    'assets/images/avatar.jpeg',
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
              Row(
                //MARK: Button
                spacing: 10,
                children: [
                  TextButton(
                    onPressed: () {
                      debugPrint('TextButton tapped ....');
                    },
                    child: Text('Text Button'),
                  ),
                  IconButton(
                    onPressed: () {
                      debugPrint('Icon button tapped ....');
                    },
                    icon: Icon(Icons.add),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      debugPrint('Elevated button tapped ....');
                    },
                    child: Icon(Icons.arrow_back_ios_new),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      debugPrint('Outlined button tapped ....');
                    },
                    child: Icon(Icons.arrow_back_ios_new),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      debugPrint('FloatingActionButton tapped ....');
                    },
                    child: Icon(Icons.add),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    color: Colors.red,
                    width: 100,
                    height: 200,
                    child: AspectRatio(
                      //MARK: AspectRatio
                      aspectRatio: 16/9,
                      child: Image.asset('assets/images/avatar.jpeg'),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  
                ]
              ),
            ],
          ),
        ),
      ),
    );
  }
}
