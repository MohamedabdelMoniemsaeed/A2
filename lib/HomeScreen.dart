import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Title(color: Colors.white, child: Text("Home")),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Story(),
                    Story(),
                    Story(),
                    Story(),
                    Story(),
                    Story(),
                    Story(),
                    Story(),
                  ],
                ),
              ),
              Posts(),
              Posts(),
              Posts(),
              Posts(),
              Posts(),
              Posts(),
              Posts(),
              Posts(),
              Posts(),
            ],
          ),
        ),
      ),
    );
  }
}

class Story extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Image.asset(
              "images/facebookStory.jpg",
              height: 120,
            ),
            Icon(
              Icons.account_circle,
              size: 30,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

class Pro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.account_circle,
          size: 60,
          color: Colors.black,
        ),
        Column(
          children: [
            Text(
              "Owner",
              style: TextStyle(fontSize: 16),
            ),
            Row(
              children: [
                Text("3h"),
                Icon(Icons.public),
              ],
            )
          ],
        ),
      ],
    );
  }
}

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text("My Post",
              style: TextStyle(
                fontSize: 40,
              )),
        ),
      ],
    );
  }
}

class Comments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Text("100"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "images/like.jpg",
                  height: 20,
                ),
              ),
            ],
          ),
        ),
        Text(
          "100 Comments",
          style: TextStyle(),
        ),
        SizedBox(
          width: 5,
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class LikeCommentShare extends StatelessWidget {
  String name;
  String imagepas;

  LikeCommentShare({required this.name, required this.imagepas});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
        children: [
          Image.asset(
            imagepas,
            width: 20,
          ),
          MaterialButton(
            
            splashColor: Colors.blue,
            onPressed: () {},
            child: Text(
              name,
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(179, 0, 0, 0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Posts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Pro(),
        Post(),
        Comments(),
        const Divider(
          color: Colors.black,
          endIndent: 5,
          height: .1,
          indent: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            LikeCommentShare(name: "Like", imagepas: "images/singleLike.jpg"),
            LikeCommentShare(name: "Comment", imagepas: "images/comment.jpg"),
            LikeCommentShare(name: "Share", imagepas: "images/share.png"),
          ],
        ),
        const Divider(
          color: Colors.black,
          endIndent: 5,
          height: .1,
          indent: 5,
        ),
      ],
    );
  }
}
