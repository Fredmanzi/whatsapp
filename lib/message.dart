import 'package:whatsapp/users.dart';

class Message {
  final User Sender;
  final String time;
  final String text;
  final bool unread;
  Message({this.Sender,this.time,this.text,this.unread});
}
final User Manzi = User(
  id: 1,
  name: 'Manzi',
  imageUrl: 'assets/greg.jpg',
);
final User David = User(
  id: 2,
  name: 'David',
  imageUrl: 'assets/james.jpg'
);
final User Gaju = User(
  id: 3,
  name: 'Gaju',
  imageUrl: 'assets/john.jpg'
);
final User Ivan = User(
  id: 4,
  name: 'Ivan',
  imageUrl: 'assets/olivia.jpg',
);
final User Mukangira = User(
  id: 5,
  name: 'Mukangira',
  imageUrl: 'assets/sam.jpg'
);

final User Kevin = User(
  id: 6,
  name: 'Kevin',
  imageUrl: 'assets/sophia.jpg'
);
final User Steven = User(
  id: 7,
  name: 'Steven',
  imageUrl: 'assets/steven.jpg'
);

List<Message> chats = [
  Message(
    Sender: Mukangira,
    time: '12:34PM',
    text: 'hello manzi!!',
    unread: true
  ),
  Message(
    Sender: David,
    time: '3:23PM',
    text: 'uraza ryari man',
    unread: false
  ),
  Message(
    Sender: Kevin,
    time: 'yesteday',
    text: 'urara ijoro',
    unread: true
  ),
  Message(
    Sender: Ivan,
    time: '1:34PM',
    text: 'Salam musaza!!',
    unread: false
  ),
  Message(
    Sender: Steven,
    time: '02/05/2020',
    text: 'hello hello',
  ),
  Message(
    Sender: Gaju,
    time: '4:34AM',
    text: 'hey hey',
    unread: false
  ),
  Message(
    Sender: David,
    time: '3:00PM',
    text: 'mwaramutse',
    unread: true
  ),
];


