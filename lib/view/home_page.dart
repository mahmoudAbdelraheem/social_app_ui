import 'package:flutter/material.dart';
import 'package:social_app_ui/constants/my_image.dart';
import 'package:social_app_ui/widgets/story_avatar.dart';

import '../widgets/add_story.dart';
import '../widgets/custom_button_nav_bar.dart';
import '../widgets/user_post.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 60, 20, 20),
        child: Stack(
          children: [
            // for all screen body
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Stories',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                // for stories
                SizedBox(
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AddStoryAvatar(
                        url: MyImage.myImageUrl,
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            physics: const ClampingScrollPhysics(),
                            itemCount: MyImage.pepoleImageUrl.length,
                            padding: const EdgeInsets.only(left: 10),
                            itemBuilder: (BuildContext context, int index) {
                              return StoryAvatar(
                                  url: MyImage.pepoleImageUrl[index]);
                            }),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 3,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
                const SizedBox(height: 5),
                //body post and background images
                Expanded(
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    children: <Widget>[
                      UserPost(
                        name: 'Tom Smith',
                        userImage: MyImage.pepoleImageUrl[0],
                        supTitle: 'Land',
                        backgroundImage: MyImage.packgroundImageUrl[0],
                        likesCount: 635,
                        isFavoraite: false,
                      ),
                      UserPost(
                        name: 'Emma Smith',
                        userImage: MyImage.pepoleImageUrl[1],
                        supTitle: 'phto',
                        backgroundImage: MyImage.packgroundImageUrl[1],
                        likesCount: 685,
                        isFavoraite: false,
                      ),
                      UserPost(
                        name: 'memo mahmoud',
                        userImage: MyImage.pepoleImageUrl[2],
                        supTitle: 'my new photo',
                        backgroundImage: MyImage.packgroundImageUrl[2],
                        likesCount: 1000,
                        isFavoraite: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // for button nav bar
            Positioned(
              bottom: 8,
              left: 0,
              right: 0,
              child: CustomButtonNavBar(),
            ),
          ],
        ),
      ),
    );
  }
}
