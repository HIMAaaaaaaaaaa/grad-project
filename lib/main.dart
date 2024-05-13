// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:guide_go/firebase_options.dart';
import 'screens/home.dart';
import 'screens/AgeebaMountains.dart';
import 'screens/splash.dart';
import 'package:guide_go/screens/HomePageSc.dart';
import 'package:guide_go/screens/Login.dart';
import 'package:guide_go/screens/SignUp.dart';
import 'package:guide_go/screens/Manialpalace.dart';
import 'package:guide_go/screens/Komona.dart';
import 'screens/cookdoor.dart';
import 'screens/Siwa.dart';
import 'screens/maps.dart';
import 'screens/userprofile.dart';
import 'screens/Editprofile.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:image_picker/image_picker.dart';
import 'screens/Gemini.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'screens/consts.dart';
import 'screens/Chatpot_intro.dart';
import 'screens/Pyramids.dart';
import 'screens/Romanamphitheatre.dart';
import 'screens/zeeyarapyramidselite.dart';
import 'screens/Montaggio.dart';
import 'screens/chat_list_page.dart';
import 'screens/chat_screen.dart';
import 'screens/UserList.dart';
import 'package:guide_go/screens/Discover.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Gemini.init(
    apiKey: GEMINI_API_KEY,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/': (context) => home(),
        '/ageeba': (context) => ageeba(),
        '/splash': (context) => SplashScreen(),
        '/Homepage': (context) => Intro(),
        '/Login': (context) => LoginScreen(),
        '/SignUp': (context) => SignupScreen(),
        '/manial': (context) => Manial(),
        '/komona': (context) => komona(),
        '/cookdoor': (context) => cookdoor(),
        "/siwa": (context) => siwa(),
        '/maps': (context) => maps(),
        '/profile': (context) => Profile(),
        '/editprofile': (context) => EditProfile(),
        '/Chatbot': (context) => HomePage(),
        '/Chatbot_intro': (context) => Chatbot_intro(),
        '/Pyramids': (context) => Pyramids(),
        '/Roman': (context) => Romanamphitheatre(),
        '/zeeyara': (context) => zeeyara(),
        '/Montaggio': (context) => Montaggio(),
        '/chatList': (context) => ChatListPage(),
        
      },
    );
  }
}
