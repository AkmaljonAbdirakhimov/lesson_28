import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lesson_28/utils/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  ThemeMode themeMode = ThemeMode.system;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.amber,
        ),
        fontFamily: GoogleFonts.aboreto().fontFamily,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      themeMode: themeMode,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Working with Resources"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => const SecondPage(),
                ),
              );
            },
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 300,
                height: 300,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [
                      0.3,
                      0.7,
                      0.9,
                    ],
                    colors: [
                      Colors.greenAccent,
                      Colors.blue,
                      Colors.red,
                    ],
                  ),
                ),
              ),
              Container(
                width: 300,
                height: 300,
                alignment: Alignment.center,
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://s1.1zoom.me/big7/367/Lake_Mountains_Sunrises_433183.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 112, 112, 112),
                      offset: Offset(-10, 10),
                      blurRadius: 5,
                      spreadRadius: 0,
                    ),
                    BoxShadow(
                      color: Colors.blue,
                      offset: Offset(10, 10),
                      blurRadius: 5,
                      spreadRadius: 0,
                    ),
                    BoxShadow(
                      color: Colors.red,
                      offset: Offset(10, -10),
                      blurRadius: 5,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 0,
                    sigmaY: 0,
                  ),
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(
                      sigmaX: 0,
                      sigmaY: 0,
                    ),
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(),
                      child: Image.network(
                        "https://storge.pic2.me/upload/746/52d1b7cdc529d.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
      ),
      body: const Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text('Bugungi Mavzu', style: AppTextStyles.headline),
              Text(
                '''Proident pariatur anim sunt deserunt ullamco magna reprehenderit Lorem esse consequat nulla. Sint incididunt sunt adipisicing magna. Lorem minim veniam occaecat do adipisicing dolor enim adipisicing. Qui veniam officia labore et ex cillum fugiat ea sunt pariatur.''',
              ),
              SizedBox(height: 20),
              Text('Bugungi Mavzu', style: AppTextStyles.headline),
              Text(
                '''Proident pariatur anim sunt deserunt ullamco magna reprehenderit Lorem esse consequat nulla. Sint incididunt sunt adipisicing magna. Lorem minim veniam occaecat do adipisicing dolor enim adipisicing. Qui veniam officia labore et ex cillum fugiat ea sunt pariatur.''',
              ),
              SizedBox(height: 20),
              Text('Bugungi Mavzu', style: AppTextStyles.headline),
              Text(
                '''Proident pariatur anim sunt deserunt ullamco magna reprehenderit Lorem esse consequat nulla. Sint incididunt sunt adipisicing magna. Lorem minim veniam occaecat do adipisicing dolor enim adipisicing. Qui veniam officia labore et ex cillum fugiat ea sunt pariatur.''',
              ),
              SizedBox(height: 20),
              Text('Bugungi Mavzu', style: AppTextStyles.headline),
              Text(
                '''Proident pariatur anim sunt deserunt ullamco magna reprehenderit Lorem esse consequat nulla. Sint incididunt sunt adipisicing magna. Lorem minim veniam occaecat do adipisicing dolor enim adipisicing. Qui veniam officia labore et ex cillum fugiat ea sunt pariatur.''',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
