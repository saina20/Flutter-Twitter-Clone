import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'tweet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Twitter",
      theme: ThemeData(
        primaryColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Twitter(),
    );
  }
}

class Twitter extends StatefulWidget {
  const Twitter({super.key});

  @override
  State<Twitter> createState() => _TwitterState();
}

class _TwitterState extends State<Twitter> {
  var tweetList = [];
  var range = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  var count = 0;
  var tweetList_post = [
    Tweet(
      state: true,
      time: "2s",
      name: '@Chonthicha_sn',
      avatar_url:
          'https://static.wixstatic.com/media/ece761_6a40f6d5b11246b19acb8420b2b8230a~mv2.jpg/v1/crop/x_128,y_0,w_941,h_941/fill/w_410,h_410,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/IMG_3028.jpg',
      postText: 'สวัสดีค่ะ หนูชื่อชลธิชา เจริญสุข (ไซนา)',
      avatar_profile:
          'https://scontent.fbkk2-8.fna.fbcdn.net/v/t39.30808-6/274671967_4644037805704507_405541909635484341_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=tKz5l2Ks4vAAX8Gke0_&_nc_ht=scontent.fbkk2-8.fna&oh=00_AfB8tY6-jn22NnR9_nrWj7rZSUnQ9GYNKOESph6xXKnYPA&oe=63880CBE',
    ),
    Tweet(
      state: false,
      time: "1s",
      name: '@Chonthicha_sn',
      avatar_url:
          'https://static.wixstatic.com/media/ece761_6a40f6d5b11246b19acb8420b2b8230a~mv2.jpg/v1/crop/x_128,y_0,w_941,h_941/fill/w_410,h_410,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/IMG_3028.jpg',
      postText:
          'หนูเป็นนักศึกษาชั้นปี 4 คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมมัลติมีเดียและเอ็นเตอร์เทนเมนต์ มหาวิทยาลัยกรุงเทพ',
      avatar_profile:
          'https://scontent.fbkk2-8.fna.fbcdn.net/v/t39.30808-6/274671967_4644037805704507_405541909635484341_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=tKz5l2Ks4vAAX8Gke0_&_nc_ht=scontent.fbkk2-8.fna&oh=00_AfB8tY6-jn22NnR9_nrWj7rZSUnQ9GYNKOESph6xXKnYPA&oe=63880CBE',
    ),
    Tweet(
      state: false,
      time: "3s",
      name: '@Chonthicha_sn',
      avatar_url:
          'https://static.wixstatic.com/media/ece761_6a40f6d5b11246b19acb8420b2b8230a~mv2.jpg/v1/crop/x_128,y_0,w_941,h_941/fill/w_410,h_410,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/IMG_3028.jpg',
      postText:
          'โดยต่อไปนี้จะเป็นผลงานบางส่วนที่ได้สะสมมา ตั้งแต่เป็นนักศึก ษาชั้นปีที่ 1 ขอเชิญรับชมได้เลยค่าาา',
      avatar_profile:
          'https://scontent.fbkk2-8.fna.fbcdn.net/v/t39.30808-6/274671967_4644037805704507_405541909635484341_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=tKz5l2Ks4vAAX8Gke0_&_nc_ht=scontent.fbkk2-8.fna&oh=00_AfB8tY6-jn22NnR9_nrWj7rZSUnQ9GYNKOESph6xXKnYPA&oe=63880CBE',
    ),
    Tweet(
      state: true,
      time: "5s",
      name: '@Chonthicha_sn',
      avatar_url:
          'https://static.wixstatic.com/media/ece761_ed5377cf7db2446da95f48e7cbd0b09d~mv2.png/v1/fill/w_462,h_432,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/ece761_ed5377cf7db2446da95f48e7cbd0b09d~mv2.png',
      postText: 'ผลงานที่ 1 ออกแบบโลโก้ร้านดอกไม้',
      avatar_profile:
          'https://scontent.fbkk2-8.fna.fbcdn.net/v/t39.30808-6/274671967_4644037805704507_405541909635484341_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=tKz5l2Ks4vAAX8Gke0_&_nc_ht=scontent.fbkk2-8.fna&oh=00_AfB8tY6-jn22NnR9_nrWj7rZSUnQ9GYNKOESph6xXKnYPA&oe=63880CBE',
    ),
    Tweet(
      state: true,
      time: "10s",
      name: '@Chonthicha_sn',
      avatar_url:
          'https://static.wixstatic.com/media/ece761_94087d00b29e4ea9b356b9332e14470d~mv2.png/v1/fill/w_462,h_432,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/ece761_94087d00b29e4ea9b356b9332e14470d~mv2.png',
      postText: 'ผลงานที่ 2 ออกแบบโลโก้ร้านอาหาร',
      avatar_profile:
          'https://scontent.fbkk2-8.fna.fbcdn.net/v/t39.30808-6/274671967_4644037805704507_405541909635484341_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=tKz5l2Ks4vAAX8Gke0_&_nc_ht=scontent.fbkk2-8.fna&oh=00_AfB8tY6-jn22NnR9_nrWj7rZSUnQ9GYNKOESph6xXKnYPA&oe=63880CBE',
    ),
    Tweet(
      state: true,
      time: "12s",
      name: '@Chonthicha_sn',
      avatar_url:
          'https://static.wixstatic.com/media/ece761_9793a8b09ee04f1497e85c5fed6a1b04~mv2.jpg/v1/fill/w_1337,h_892,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/ece761_9793a8b09ee04f1497e85c5fed6a1b04~mv2.jpg',
      postText: 'ผลงานที่ 3 ออกแบบผลิตภัณฑ์น้ำหอม',
      avatar_profile:
          'https://scontent.fbkk2-8.fna.fbcdn.net/v/t39.30808-6/274671967_4644037805704507_405541909635484341_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=tKz5l2Ks4vAAX8Gke0_&_nc_ht=scontent.fbkk2-8.fna&oh=00_AfB8tY6-jn22NnR9_nrWj7rZSUnQ9GYNKOESph6xXKnYPA&oe=63880CBE',
    ),
    Tweet(
      state: true,
      time: "16s",
      name: '@Chonthicha_sn',
      avatar_url:
          'https://static.wixstatic.com/media/ece761_4336ba193bf34a17b495929bbcc8df6f~mv2.png/v1/fill/w_530,h_750,al_c,q_90,usm_0.66_1.00_0.01,enc_auto/ece761_4336ba193bf34a17b495929bbcc8df6f~mv2.png',
      postText: 'ผลงานที่ 4 ออกแบบโปสเตอร์โควิด-19',
      avatar_profile:
          'https://scontent.fbkk2-8.fna.fbcdn.net/v/t39.30808-6/274671967_4644037805704507_405541909635484341_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=tKz5l2Ks4vAAX8Gke0_&_nc_ht=scontent.fbkk2-8.fna&oh=00_AfB8tY6-jn22NnR9_nrWj7rZSUnQ9GYNKOESph6xXKnYPA&oe=63880CBE',
    ),
    Tweet(
      state: true,
      time: "5s",
      name: '@Chonthicha_sn',
      avatar_url:
          'https://static.wixstatic.com/media/ece761_11fac2632d214912b6d06e9950b325def000.jpg/v1/fill/w_406,h_240,al_c,q_80,usm_0.33_1.00_0.00,enc_auto/ece761_11fac2632d214912b6d06e9950b325def000.jpg',
      postText: 'ผลงานที่ 5 สร้างเกม 2D โดยใช้ Unity',
      avatar_profile:
          'https://scontent.fbkk2-8.fna.fbcdn.net/v/t39.30808-6/274671967_4644037805704507_405541909635484341_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=tKz5l2Ks4vAAX8Gke0_&_nc_ht=scontent.fbkk2-8.fna&oh=00_AfB8tY6-jn22NnR9_nrWj7rZSUnQ9GYNKOESph6xXKnYPA&oe=63880CBE',
    ),
    Tweet(
      state: true,
      time: "4s",
      name: '@Chonthicha_sn',
      avatar_url:
          'https://static.wixstatic.com/media/ece761_fb1f7927b11a4569b6b8e90fad2fd91e~mv2.jpg/v1/crop/x_202,y_94,w_959,h_516/fill/w_688,h_368,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/Bedroom%20Model_JPG.jpg',
      postText: 'ผลงานที่ 6 สร้างโมเดล 3D โดยใช้ Maya',
      avatar_profile:
          'https://scontent.fbkk2-8.fna.fbcdn.net/v/t39.30808-6/274671967_4644037805704507_405541909635484341_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=tKz5l2Ks4vAAX8Gke0_&_nc_ht=scontent.fbkk2-8.fna&oh=00_AfB8tY6-jn22NnR9_nrWj7rZSUnQ9GYNKOESph6xXKnYPA&oe=63880CBE',
    ),
    Tweet(
      state: false,
      time: "6s",
      name: '@Chonthicha_sn',
      avatar_url:
          'https://static.wixstatic.com/media/ece761_fb1f7927b11a4569b6b8e90fad2fd91e~mv2.jpg/v1/crop/x_202,y_94,w_959,h_516/fill/w_688,h_368,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/Bedroom%20Model_JPG.jpg',
      postText:
          'ถ้าหากท่านสนใจดูผลงานเพิ่มเติม สามารติดต่อมาได้ที่ e-mail Chonthicha.jaro@bumail.net ได้เลยค่ะ ขอบคุณค่าาาา',
      avatar_profile:
          'https://scontent.fbkk2-8.fna.fbcdn.net/v/t39.30808-6/274671967_4644037805704507_405541909635484341_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=tKz5l2Ks4vAAX8Gke0_&_nc_ht=scontent.fbkk2-8.fna&oh=00_AfB8tY6-jn22NnR9_nrWj7rZSUnQ9GYNKOESph6xXKnYPA&oe=63880CBE',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          // ignore: prefer_const_constructors
          margin: const EdgeInsets.all(10.0),
          // ignore: prefer_const_constructors
          child: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://scontent.fbkk2-8.fna.fbcdn.net/v/t39.30808-6/274671967_4644037805704507_405541909635484341_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=tKz5l2Ks4vAAX8Gke0_&_nc_ht=scontent.fbkk2-8.fna&oh=00_AfB8tY6-jn22NnR9_nrWj7rZSUnQ9GYNKOESph6xXKnYPA&oe=63880CBE'),
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        // ignore: prefer_const_constructors
        title: Text(
          "Home",
          // ignore: prefer_const_constructors
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildIconButton(Icons.home, Colors.blue),
            buildIconButton(Icons.search_outlined, Colors.grey),
            buildIconButton(Icons.notifications_outlined, Colors.grey),
            buildIconButton(Icons.email_outlined, Colors.grey),
          ],
        ),
      ),
      body: listofTweet(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(FontAwesomeIcons.pen),
        onPressed: () {
          setState(() {
            if (count == 9) {
              tweetList.insert(0, tweetList_post[9]);
            } else {
              tweetList.insert(0, tweetList_post[count]);
              count++;
            }
          });
        },
      ),
    );
  }

  Widget listofTweet() {
    return Container(
        color: Colors.white,
        child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return tweetList[index];
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(
                  height: 10,
                ),
            itemCount: tweetList.length));
  }

  Widget buildIconButton(IconData icon, Color color) {
    return IconButton(
      icon: Icon(
        icon,
        color: color,
      ),
      onPressed: () {},
    );
  }
}
