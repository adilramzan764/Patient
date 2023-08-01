import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isLiked = false;

  List<Post> posts = [
    Post(
      pic: 'assets/doc3.svg',
      name: 'Dr. Travis Westby',
      caption: 'ROC Private Clinic is an independent clinic with offices in the heart of Harley Streets medical district in London and West',
      noOfLikes: 98,
      post: 'assets/p1.svg',
    ),
    Post(
      pic: 'assets/doc3.svg',
      name: 'Dr. Travis Westby',
      caption: 'ROC Private Clinic is an independent clinic with offices in the heart of Harley Streets medical district in London and West',
      noOfLikes: 98,
      post: 'assets/clinic2.svg',
    ),
  ];

  Widget buildPost(Post post) {


    return Column(
      children: [
        SizedBox(height: 10),
        Container(
          height: 50,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                Container(
                  height: 110,
                  width: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(post.pic),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        post.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "17 Jul",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: RichText(
            text: TextSpan(
              text: post.caption,
              style: TextStyle(color: Color(0xff000000), fontSize: 18),
              children: <TextSpan>[
                TextSpan(
                  text: '...See more',
                  style: TextStyle(
                    color: Color(0xff6E6D6E),
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 370,
          width: double.infinity,
          child: Image.asset(
            post.post,
            fit: BoxFit.cover,
          ),
        ),
        Divider(
          color: Color(0xffEDEFF3),
          thickness: 1,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton.icon(
                  onPressed: () {
                    setState(() {
                      isLiked = !isLiked;
                    });
                  },
                  icon: Icon(
                    Icons.thumb_up_alt_rounded,
                    color: isLiked ? Colors.blue : Colors.grey,
                  ),
                  label: Text(
                    'Like',
                    style: TextStyle(
                      color: isLiked ? Colors.blue : Colors.black,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    '${post.noOfLikes} Likes',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: Color(0xffEDEFF3),
          thickness: 1,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return buildPost(posts[index]);
        },
      ),
    );
  }
}

class Post {
  final String pic;
  final String name;
  final String caption;
  final int noOfLikes;
  final String post;

  Post({
    required this.pic,
    required this.name,
    required this.caption,
    required this.noOfLikes,
    required this.post,
  });
}
