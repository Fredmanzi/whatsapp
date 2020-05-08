import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/message.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 0;
 final List<String> categories = ['Chats','Status','Calls','Camera'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsUp clone',
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          backgroundColor: Colors.grey[700],
          title: Text(
            'WhatsApp',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              letterSpacing: 1.1,
              fontFamily: 'Montserrat',
              color: Colors.grey[400],
            ),
          ),
          actions: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {},
                    color: Colors.grey[400],
                    iconSize: 35.0,
                  ),
                  IconButton(
                    icon: Icon(Icons.more_vert),
                    onPressed: () {},
                    iconSize: 35.0,
                  )
                ],
              ),
            ),
          ],
          elevation: 0.0,
        ),
        body: Column(
          children: <Widget>[
            Container(
              height:60.0,
              color: Colors.grey[700],
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (BuildContext context,int index){
                    return GestureDetector(
                      onTap: (){
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20.0),
                        child: Text(categories[index],
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: index == selectedIndex ? Colors.teal : Colors.grey[400],
                            letterSpacing: 1.2,
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            Expanded(
              child: Container(
                color: Colors.grey[900],
                child: ListView.builder(
                    itemCount: chats.length,
                    itemBuilder: (BuildContext context,int index){
                      final Message chat = chats[index];
                      return Container(
                        margin: EdgeInsets.only(top: 5.0,bottom: 5.0,right: 10.0),
                        padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    CircleAvatar(
                                      radius: 20.0,
                                      backgroundImage: AssetImage(chat.Sender.imageUrl),
                                    ),
                                    SizedBox(width: 10.0),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(chat.Sender.name,
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          fontFamily: 'Montserrat',
                                          color: Colors.grey[400],
                                          fontWeight: FontWeight.bold,
                                        ),
                                        ),
                                        Text(chat.text,
                                          style: TextStyle(
                                            fontSize: 13.0,
                                            fontFamily: 'Montserrat',
                                            color: Colors.grey[400],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Text(chat.time,
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        fontFamily: 'Montserrat',
                                        color: Colors.grey[400],
                                        fontWeight: FontWeight.bold,
                                      ),),
                                    SizedBox(height: 5.0),
                                   chat.unread == true ? Container(
                                      width: 20.0,
                                        height: 20.0,
                                        decoration: BoxDecoration(
                                          color: Colors.teal,
                                          borderRadius: BorderRadius.circular(40.0),
                                        ),
                                        alignment: Alignment.center,
                                        child: Text('2',style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold
                                        ),
                                        ),
                                    ) : Text(''),
                                  ],
                                ),
                              ],
                            ),
                            Divider(
                              color: Colors.grey[800],
                              height: 15,
                              indent: 20,
                              thickness: 1.0,
                              endIndent: 0,
                            )
                          ],
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: IconButton(
            icon: Icon(Icons.message),
            onPressed: (){},
            color: Colors.white,
          ),
          backgroundColor: Colors.teal,
        ),

      ),
    );
  }
}
