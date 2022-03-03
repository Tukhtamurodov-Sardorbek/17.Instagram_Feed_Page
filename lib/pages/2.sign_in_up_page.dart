import 'package:flutter/material.dart';
import 'package:instagram_ultimate/pages/1.splash_page.dart';

import '3.feed_page.dart';

class SigningInUp extends StatefulWidget {
  const SigningInUp({Key? key}) : super(key: key);
  static const String id = 'signing_in_up';

  @override
  _SigningInUpState createState() => _SigningInUpState();
}

class _SigningInUpState extends State<SigningInUp> {
  String _selectedLanguage = 'English';
  final bool _enabled = true;
  final List<String> _languages = ['Arabic', 'Bulgarian', 'Chinese', 'Czech', 'Danish', 'English', 'Finnish', 'French', 'German', 'Greek', 'Hindi', 'Hungarian', 'Italian', 'Norwegian', 'Portuguese', 'Romanian', 'Russian', 'Spanish', 'Swedish', 'Turkish', 'Ukrainian', 'Vietnamese'];
  bool isHidden = true;
  var userName = TextEditingController();
  var password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    void _openFeed() => Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => const FeedPage()));
    // void _nextPage(context){
    //   Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => ReceiveDataAndGoBack(message: message.text,)));
    // }
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('English', style: TextStyle(fontSize: 16, color: Colors.grey),),
            PopupMenuButton(
              initialValue: _selectedLanguage,
              enabled: _enabled,
              icon: const Align( alignment: Alignment.centerLeft, child: Icon(Icons.arrow_drop_down_circle_outlined, color: Colors.grey, size: 18,)),
              itemBuilder: (BuildContext context) => _languages.map((item) =>
                  PopupMenuItem(value: item, child: Text(item))).toList(),
              onSelected: (string) {
                setState(() {
                  _selectedLanguage = string.toString();
                });
              },
            ),
          ],
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Stack(
          children: [
            /// DON'T HAVE AN ACCOUNT?
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Don\'t have an account? ', style: TextStyle(color: Colors.grey, fontSize: 14),),
                      TextButton( child: const Text('Sign up.', style: TextStyle(color: Colors.blue, fontSize: 14, fontWeight: FontWeight.bold),), onPressed: (){}),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /// INSTAGRAM
                Container(
                  alignment: Alignment.center,
                  child: const Text("Instagram", style: TextStyle(color: Colors.black, fontFamily: 'instagramFont', fontSize: 40),),
                ),
                const SizedBox(height: 20),
                /// USERNAME
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    border: Border.all(color: const Color(0xffEEEEEE)),
                    color: Colors.grey[100],
                  ),
                  child: TextField(
                    enableInteractiveSelection:false,
                    controller: userName,
                    style: const TextStyle(color: Colors.black, fontSize: 16),
                    keyboardType: TextInputType.text,
                    // onChanged: (text) {print(text);},
                    decoration: const InputDecoration(
                      hintText: 'Username',
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                /// PASSWORD
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    border: Border.all(color: const Color(0xffEEEEEE)),
                    color: Colors.grey[100],
                  ),
                  child: TextField(
                    controller: password,
                    style: const TextStyle(color: Colors.black, fontSize: 16),
                    keyboardType: TextInputType.text,
                    obscureText: isHidden,
                    // onChanged: (text) {print(text);},
                    decoration: InputDecoration(
                      hintText: 'Password',
                      suffixIcon: IconButton(
                          onPressed: (){
                            setState(() {
                              isHidden = !isHidden;
                            });},
                          icon: Icon(isHidden?Icons.visibility_off_outlined:Icons.visibility_outlined)),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                /// LOGIN BUTTON
                MaterialButton(
                  color: Colors.blue,
                  minWidth: MediaQuery.of(context).size.width,
                  child: const Text('Log in', style: TextStyle(color: Colors.white),),
                  onPressed: (){_openFeed();
                  },
                ),
                /// FORGOT PASSWORD?
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Forgot your login details? ', style: TextStyle(color: Colors.grey, fontSize: 14),),
                    TextButton( child: const Text('Get help logging in.', style: TextStyle(color: Colors.blue, fontSize: 14, fontWeight: FontWeight.bold),), onPressed: (){}),
                  ],
                ),
                /// ~OR~
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Expanded(child: Divider()),
                    Text(' OR ', style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold)),
                    Expanded(child: Divider()),
                  ],
                ),
                /// VIA FACEBOOK
                MaterialButton(
                  color: Colors.blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.facebook, color: Colors.white,),
                      Text(' Continue as Sardor Tukhtamurodov', style: TextStyle(color: Colors.white),),
                    ],
                  ),
                  onPressed: (){},
                ),
                // const SizedBox(height: 200),

              ],
            ),
          ],
        ),
        // decoration: const BoxDecoration(
        //   gradient: LinearGradient(
        //     begin: Alignment.bottomLeft,
        //       colors: [
        //         Color.fromRGBO(131, 58, 180, 1),
        //         Color.fromRGBO(225, 48, 108, 0.92),
        //       ]
        //   ),
        // ),
      ),
    );
  }
}
