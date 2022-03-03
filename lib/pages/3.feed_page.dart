import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);
  static const String id = 'feed_page';
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {

  late final List _users = List.from(objectsList());
  late final List _posts = [];
  bool _isAddedStory = false;
  bool _isSaved = false;
  bool _likeButtonIsPressed = false;
  bool isDark = false;

  List objectsList(){
    _User _post1 = _User(userName: 'Your Story', profilePhotoPath: 'assets/instagram_feed_page/profile_pictures/personal_profile/img.png', isPosted: false, likedUsers: [], likesNumber: -1, commentedUser: '', comment: '', postPath:'');
    _User _post2 = _User(userName: 'Sylvester', profilePhotoPath: 'assets/instagram_feed_page/profile_pictures/boys/boy1.jpg', isPosted: false, likedUsers: [], likesNumber: -1, commentedUser: '', comment: '', postPath:'');
    _User _post3 = _User(userName: 'Emily', profilePhotoPath: 'assets/instagram_feed_page/profile_pictures/girls/girl1.jpg', isPosted: false, likedUsers: [], likesNumber: -1, commentedUser: '', comment: '', postPath:'');
    _User _post4 = _User(userName: 'Amelia', profilePhotoPath: 'assets/instagram_feed_page/profile_pictures/girls/girl2.jpg', isPosted: false, likedUsers: [], likesNumber: -1, commentedUser: '', comment: '', postPath:'');
    _User _post5 = _User(userName: 'James', profilePhotoPath: 'assets/instagram_feed_page/profile_pictures/boys/boy2.jpg', isPosted: false, likedUsers: [], likesNumber: -1, commentedUser: '', comment: '', postPath:'');
    _User _post6 = _User(userName: 'Charlotte', profilePhotoPath: 'assets/instagram_feed_page/profile_pictures/girls/girl3.jpg', isPosted: false, likedUsers: [], likesNumber: -1, commentedUser: '', comment: '', postPath:'');
    _User _post7 = _User(userName: 'Ava', profilePhotoPath: 'assets/instagram_feed_page/profile_pictures/girls/girl4.jpg', isPosted: false, likedUsers: [], likesNumber: -1, commentedUser: '', comment: '', postPath:'');
    _User _post8 = _User(userName: 'David', profilePhotoPath: 'assets/instagram_feed_page/profile_pictures/boys/boy3.jpg', isPosted: false, likedUsers: [], likesNumber: -1, commentedUser: '', comment: '', postPath:'');
    _User _post9 = _User(userName: 'Emma', profilePhotoPath: 'assets/instagram_feed_page/profile_pictures/girls/girl5.jpg', isPosted: true, likedUsers: ['Mateo','Zoe','Lily'], likesNumber: 605, commentedUser: 'Lucy', comment: ' Whatta cute animal 😍 ', postPath:'assets/instagram_feed_page/posts/post2.jpg');
    _User _post10 = _User(userName: 'Lucy', profilePhotoPath: 'assets/instagram_feed_page/profile_pictures/girls/girl6.jpg', isPosted: true, likedUsers: ['Alexander','Anna'], likesNumber: 381, commentedUser: 'Zoe', comment: ' Love kittens...' , postPath:'assets/instagram_feed_page/posts/post3.png');
    _User _post11 = _User(userName: 'Alexander', profilePhotoPath: 'assets/instagram_feed_page/profile_pictures/boys/boy4.jpg', isPosted: false, likedUsers: [], likesNumber: -1, commentedUser: '', comment: '', postPath:'');
    _User _post12 = _User(userName: 'Alice', profilePhotoPath: 'assets/instagram_feed_page/profile_pictures/girls/girl7.jpg', isPosted: false, likedUsers: [], likesNumber: -1, commentedUser: '', comment: '', postPath:'');
    _User _post13 = _User(userName: 'Anna', profilePhotoPath: 'assets/instagram_feed_page/profile_pictures/girls/girl8.png', isPosted: false, likedUsers: [], likesNumber: -1, commentedUser: '', comment: '', postPath:'');
    _User _post14 = _User(userName: 'Michael', profilePhotoPath: 'assets/instagram_feed_page/profile_pictures/boys/boy5.jpg', isPosted: true, likedUsers: ['Leo','Mateo'], likesNumber: 102, commentedUser: 'Theodore', comment: ' Be curious 🤓👍🏻', postPath:'assets/instagram_feed_page/posts/post1.png');
    _User _post15 = _User(userName: 'Nora', profilePhotoPath: 'assets/instagram_feed_page/profile_pictures/girls/girl9.jpg', isPosted: false, likedUsers: [], likesNumber: -1, commentedUser: '', comment: '', postPath:'');
    _User _post16 = _User(userName: 'Elizabeth', profilePhotoPath: 'assets/instagram_feed_page/profile_pictures/girls/girl10.png', isPosted: false, likedUsers: [], likesNumber: -1, commentedUser: '', comment: '', postPath:'');
    _User _post17 = _User(userName: 'John', profilePhotoPath: 'assets/instagram_feed_page/profile_pictures/boys/boy6.jpg',  isPosted: false, likedUsers: [], likesNumber: -1, commentedUser: '', comment: '', postPath:'');
    _User _post18 = _User(userName: 'Luna', profilePhotoPath: 'assets/instagram_feed_page/profile_pictures/girls/girl11.jpg', isPosted: false, likedUsers: [], likesNumber: -1, commentedUser: '', comment: '', postPath:'');
    _User _post19 = _User(userName: 'Zoe', profilePhotoPath: 'assets/instagram_feed_page/profile_pictures/girls/girl12.jpg', isPosted: false, likedUsers: [], likesNumber: -1, commentedUser: '', comment: '', postPath:'');
    _User _post20 = _User(userName: 'Daniel', profilePhotoPath: 'assets/instagram_feed_page/profile_pictures/boys/boy7.jpg',  isPosted: false, likedUsers: [], likesNumber: -1, commentedUser: '', comment: '', postPath:'');
    _User _post21 = _User(userName: 'Stella', profilePhotoPath: 'assets/instagram_feed_page/profile_pictures/girls/girl13.jpg', isPosted: false, likedUsers: [], likesNumber: -1, commentedUser: '', comment: '', postPath:'');
    _User _post22 = _User(userName: 'Everly', profilePhotoPath: 'assets/instagram_feed_page/profile_pictures/girls/girl14.jpg', isPosted: false, likedUsers: [], likesNumber: -1, commentedUser: '', comment: '', postPath:'');
    _User _post23 = _User(userName: 'Jacob', profilePhotoPath: 'assets/instagram_feed_page/profile_pictures/boys/boy8.jpg',  isPosted: false, likedUsers: [], likesNumber: -1, commentedUser: '', comment: '', postPath:'');
    _User _post24 = _User(userName: 'Lily', profilePhotoPath: 'assets/instagram_feed_page/profile_pictures/girls/girl15.jpg', isPosted: false, likedUsers: [], likesNumber: -1, commentedUser: '', comment: '', postPath:'');
    _User _post25 = _User(userName: 'Linda', profilePhotoPath: 'assets/instagram_feed_page/profile_pictures/girls/girl16.jpg', isPosted: false, likedUsers: [], likesNumber: -1, commentedUser: '', comment: '', postPath:'');
    _User _post26 = _User(userName: 'Jackson', profilePhotoPath: 'assets/instagram_feed_page/profile_pictures/boys/boy9.jpg',  isPosted: false, likedUsers: [], likesNumber: -1, commentedUser: '', comment: '', postPath:'');
    _User _post27 = _User(userName: 'Eliana', profilePhotoPath: 'assets/instagram_feed_page/profile_pictures/girls/girl17.jpg', isPosted: false, likedUsers: [], likesNumber: -1, commentedUser: '', comment: '', postPath:'');
    _User _post28 = _User(userName: 'Bella', profilePhotoPath: 'assets/instagram_feed_page/profile_pictures/girls/girl18.jpg', isPosted: false, likedUsers: [], likesNumber: -1, commentedUser: '', comment: '', postPath:'');
    _User _post29 = _User(userName: 'Mateo', profilePhotoPath: 'assets/instagram_feed_page/profile_pictures/boys/boy10.jpg',  isPosted: false, likedUsers: [], likesNumber: -1, commentedUser: '', comment: '', postPath:'');
    _User _post30 = _User(userName: 'Anna', profilePhotoPath: 'assets/instagram_feed_page/profile_pictures/girls/girl19.jpg', isPosted: false, likedUsers: [], likesNumber: -1, commentedUser: '', comment: '', postPath:'');
    _User _post31 = _User(userName: 'Caroline', profilePhotoPath: 'assets/instagram_feed_page/profile_pictures/girls/girl20.jpg', isPosted: false, likedUsers: [], likesNumber: -1, commentedUser: '', comment: '', postPath:'');
    _User _post32 = _User(userName: 'Theodore', profilePhotoPath: 'assets/instagram_feed_page/profile_pictures/boys/boy11.jpg',  isPosted: false, likedUsers: [], likesNumber: -1, commentedUser: '', comment: '', postPath:'');
    _User _post33 = _User(userName: 'Valentina', profilePhotoPath: 'assets/instagram_feed_page/profile_pictures/girls/girl21.jpg', isPosted: false, likedUsers: [], likesNumber: -1, commentedUser: '', comment: '', postPath:'');
    _User _post34 = _User(userName: 'Sophie', profilePhotoPath: 'assets/instagram_feed_page/profile_pictures/girls/girl22.jpg', isPosted: false, likedUsers: [], likesNumber: -1, commentedUser: '', comment: '', postPath:'');
    _User _post35 = _User(userName: 'Leo', profilePhotoPath: 'assets/instagram_feed_page/profile_pictures/boys/boy12.jpg',  isPosted: false, likedUsers: [], likesNumber: -1, commentedUser: '', comment: '', postPath:'');
    _User _post36 = _User(userName: 'Alice', profilePhotoPath: 'assets/instagram_feed_page/profile_pictures/girls/girl23.jpg', isPosted: false, likedUsers: [], likesNumber: -1, commentedUser: '', comment: '', postPath:'');
    _User _post37 = _User(userName: 'Sarah', profilePhotoPath: 'assets/instagram_feed_page/profile_pictures/girls/girl24.jpg',  isPosted: false, likedUsers: [], likesNumber: -1, commentedUser: '', comment: '', postPath:'');

    [_post1,_post2,_post3,_post4,_post5,_post6,_post7,_post8,_post9,_post10, _post11,_post12,_post13,_post14,_post15,_post16,_post17,_post18,_post19,_post20, _post21,_post22,_post23,_post24,_post25,_post26,_post27,_post28,_post29,_post30, _post31,_post32,_post33,_post34,_post35,_post36,_post37].forEach((object) {if(object._isPosted) {setState(() {_posts.add(object);});}});
    print('POSTS: $_posts');
    return [_post1,_post2,_post3,_post4,_post5,_post6,_post7,_post8,_post9,_post10, _post11,_post12,_post13,_post14,_post15,_post16,_post17,_post18,_post19,_post20, _post21,_post22,_post23,_post24,_post25,_post26,_post27,_post28,_post29,_post30, _post31,_post32,_post33,_post34,_post35,_post36,_post37];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDark ? Colors.black : Colors.white,
      appBar: AppBar(
        backgroundColor: isDark ? Colors.black : Colors.white,
        title: Text("Instagram", style: TextStyle(color: isDark ? Colors.white : Colors.black, fontFamily: 'instagramFont', fontSize: 32),),
        centerTitle: true,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.camera_alt_outlined, size:26, color: isDark ? Colors.white : Colors.black),
              onPressed: () {},
            );
          },
        ),
        actions: [
          const SizedBox(width: 20),
          IconButton(
            icon: Icon(Icons.tv, size:26, color: isDark ? Colors.white : Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Image(
              height: 20,
              width: 20,
              image: const AssetImage('assets/instagram_feed_page/icons/send.png'),
              color: isDark ? Colors.white : Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
              icon: Icon(isDark ? Icons.light_mode : Icons.dark_mode, color: isDark ? Colors.white : Colors.black, size: 22),
              onPressed: () {
                setState(() {
                  isDark = !isDark;
                });
              }
          )
        ],
        elevation: 0,
      ),
      body: ListView(
        children: [
          ///Stories
          Column(
            // Text(Stories ... Watch All)
            children: [
              Container(
                // height: 50,
                padding: const EdgeInsets.only(right: 20, left:20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Text(Stories)
                    Text('Stories', style: TextStyle(color: isDark ? Colors.white : Colors.black, fontSize: 16),),
                    //Text(Watch All)
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text('Watch All', style: TextStyle(color: isDark ? Colors.white : Colors.black, fontSize: 16),),
                    ),
                  ],
                ),
              ),

              /// Stories
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5.0),
                height: 100.0,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: _users.length,
                  itemBuilder: (context, index){
                    return _story(_users[index]._profilePhoto, _users[index]._username);
                  },
                ),
              ),
            ],
          ),

          /// Posts
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _posts.length,
              itemBuilder: (context, index){
                // if(_users[index]._isPosted){
                //   return _post(_objectsList()[index]._profilePhoto, _users[index]._username,_users[index]._pathToPost, _users[index]._likedBy, _users[index]._likesNumber, _users[index]._commentedUser, _users[index]._comment);
                // }
                return _post(_posts[index]._profilePhoto, _posts[index]._username,_posts[index]._pathToPost, _posts[index]._likedBy, _posts[index]._likesNumber, _posts[index]._commentedUser, _posts[index]._comment);
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        iconSize: 30,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: isDark ? Colors.black : Colors.white,
            icon: Icon(Icons.home_outlined,color: isDark ? Colors.white : Colors.black,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: isDark ? Colors.black : Colors.white,
            icon: Icon(Icons.search_outlined,color: isDark ? Colors.white : Colors.black,),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            backgroundColor: isDark ? Colors.black : Colors.white,
            icon: Icon(Icons.add_box_outlined, color: isDark ? Colors.white : Colors.black,),
            label: 'Upload',
          ),
          BottomNavigationBarItem(
            backgroundColor: isDark ? Colors.black : Colors.white,
            icon: Icon(Icons.favorite_border_outlined, color: isDark ? Colors.white : Colors.black,),
            label: 'Likes',
          ),
          BottomNavigationBarItem(
            backgroundColor: isDark ? Colors.black : Colors.white,
            icon: Container(
                height: 35,
                width: 50,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/instagram_feed_page/profile_pictures/personal_profile/img.png'),
                    )
                )
            ),
            label: 'Profile',
          ),
        ],
        // currentIndex: _selectedIndex,
        selectedItemColor: Colors.green[800],
      ),
    );
  }
  Widget _story(String profilePhotoPath, String userName){
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 70,
              width:80,
              decoration: BoxDecoration(
                border: Border.all(color: _isAddedStory == false && userName == 'Your Story' ?  Colors.white : Colors.green, width: 3),
                shape: BoxShape.circle,
              ),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(profilePhotoPath),
                    fit: userName == 'David' ? BoxFit.cover : BoxFit.contain,
                  ),
                ),
              ),
            ),
            if (userName == 'Your Story') Container(
              margin: const EdgeInsets.only(top:24, left: 27),
              child: (IconButton(
                padding: const EdgeInsets.only(right: 0),
                alignment: Alignment.bottomRight,
                icon: const Image(
                  height: 22,
                  width: 22,
                  image: AssetImage('assets/instagram_feed_page/icons/add_story.png'),
                ),
                onPressed: () {
                  setState(() {
                    _isAddedStory = !_isAddedStory;
                  });
                },
              )

                  // const Icon(Icons.add_circle,  color: Colors.blue, size: 20,),)

              ),
            ),
          ],
        ),
        SizedBox(height: userName == 'Your Story' ? 1 : 3),
        Text(userName, style: TextStyle(color: isDark ? Colors.white : Colors.black, fontSize: 17))
      ],
    );
  }
  Widget _post(String profilePhoto, String userName, String post, List likedUsers, int likesNumber, String commentedUser, String comment){
    String names = '';
    for (var element in likedUsers) {names += element + ', ';}
    return Column(
      children: [
        //Header
        Padding(
          padding: const EdgeInsets.only(top:10, bottom: 10),
          child: ListTile(
              leading: ClipRRect(
                child:  Image(
                  image: AssetImage(profilePhoto),
                  fit: BoxFit.cover,
                  height: 60,
                  width: 60,
                ),
                borderRadius: BorderRadius.circular(60),
              ),
              title: Text(userName, style: TextStyle(color: isDark ? Colors.white : Colors.black, fontWeight: FontWeight.bold, fontSize: 18),),
              trailing: IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz, color: isDark ? Colors.white : Colors.black, size:38))),
        ),
        //post
        Image(
          image: AssetImage(post),
          // width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 4,
              child: Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width*0.005),
                  IconButton(onPressed: (){setState(() {_likeButtonIsPressed = !_likeButtonIsPressed;});},
                      icon: Icon(_likeButtonIsPressed ? Icons.favorite : Icons.favorite_border_outlined, color: _likeButtonIsPressed ? Colors.red : isDark ? Colors.white : Colors.black, size:30)),
                  SizedBox(width: MediaQuery.of(context).size.width*0.05),
                  IconButton(icon: Image(height: 30, width: 30, image: const AssetImage('assets/instagram_feed_page/icons/comment.png'), color: isDark ? Colors.white : Colors.black,), onPressed: () {},),
                  SizedBox(width: MediaQuery.of(context).size.width*0.05),
                  IconButton(icon: Image(height: 30, width: 30, image: const AssetImage('assets/instagram_feed_page/icons/share_post.png'), color: isDark ? Colors.white : Colors.black), onPressed: () {},),
                ],
              ),
            ),
            // const SizedBox(width: 200,),
            IconButton(icon: Image(height: 28, width: 30, color: isDark ? Colors.white : Colors.black,image: _isSaved ? const AssetImage('assets/instagram_feed_page/icons/save_colored.png') : const AssetImage('assets/instagram_feed_page/icons/save_outline.png')), onPressed: () {setState(() {_isSaved = !_isSaved;});},),
          ],
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.015, right: MediaQuery.of(context).size.width*0.015),
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: 17.0,
                color: isDark ? Colors.white : Colors.black,
              ),
              children: <TextSpan>[
                const TextSpan(text: 'Liked by '),
                TextSpan(text: names, style: const TextStyle(fontWeight: FontWeight.bold)),
                const TextSpan(text: 'and '),
                TextSpan(text: '$likesNumber others\n', style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: commentedUser, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: comment),
              ],
            ),
          ),
        ),




      ],
    );
  }
}

class _User{
  late String userName;
  late String profilePhotoPath;
  late bool isPosted;
  late List<String> likedUsers;
  late int likesNumber;
  late String commentedUser;
  late String comment;
  late String postPath;

  _User({required this.userName, required this.profilePhotoPath, required this.isPosted, required this.likedUsers, required this.likesNumber, required this.commentedUser, required this.comment, required this.postPath});

  String get _username => userName;
  String get _profilePhoto => profilePhotoPath;
  bool get _isPosted => isPosted;
  List<String> get _likedBy => likedUsers;
  int get _likesNumber => likesNumber;
  String get _commentedUser => commentedUser;
  String get  _comment=> comment;
  String? get _pathToPost => postPath;
}