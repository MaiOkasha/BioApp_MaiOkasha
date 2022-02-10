// ignore: avoid_web_libraries_in_flutter
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:vp12_bio_ap/widgets/bio_card.dart';

class BioScreen extends StatelessWidget {
  const BioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title:  Text('Bio',
          style: TextStyle(
            fontFamily: 'SourceSansPro',
            fontWeight: FontWeight.bold,
            color: Colors.pink[900],
          ),
        ),
      ),
      body: Stack(
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 4,sigmaY: 3),
            child: Image.network('https://i.pinimg.com/originals/27/fd/d9/27fdd9439fc2f19efead45031debba2c.jpg',
              fit: BoxFit.cover,
              height: double.infinity,


            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:    [
              const Spacer(),
              const CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('images/avatar.jpg',
                ),
              ),
              const SizedBox(height: 15,),
              const Text('Mai Okasha',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 6,),
              const Text('Flutter Course - VisionPlus',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  letterSpacing: 1,
                ),
              ),
             const Divider(
                thickness: 2,
                color: Colors.white,
                height: 30,
                indent: 20,
                endIndent: 20,
              ),
              BioCard(leadingIcon: Icons.email,
                  title: 'Email',
                  subtitle: 'maiokasha930@gmail.com',
                  trailingIcon: Icons.send,
                marginBottom: 10,
                onPressed: (){
                print('Email');
                },

              ),
              BioCard(leadingIcon: Icons.phone_android,
                  title: 'Mobile',
                  subtitle:'970-099-2139-524',
                  trailingIcon:Icons.phone,
                onPressed: (){
                print('Mobile');
                },
              ),
              const Spacer(),
             const Padding(
               padding: EdgeInsets.only(bottom:20),
               child: Text('Flutter2022'),
             ),
            ],
          )
        ],
      ),

    );
  }
}

