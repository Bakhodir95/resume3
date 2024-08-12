import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  void _navigate() async {
    const url =
        "https://yandex.uz/maps/geo/1508547282/?ll=41.2995%2C69.2401&z=14.23";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Couldn't find url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 60,
            backgroundColor: Colors.grey.shade500,
            child: const CircleAvatar(
              radius: 55,
              backgroundImage: AssetImage('assets/images/logo.png'),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Tojiddinov\nMuhammad Abdulloh',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue[900],
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            ' Passionate Flutter Developer\n'
            ' Enthusiastic Open Source Contributor\n',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            '+2 years experience',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_pin, color: Colors.blue[900]),
              const SizedBox(width: 4),
              TextButton(
                onPressed: _navigate,
                child: const Text(
                  "Uzbekistan, Tashkent, Mirzo Ulugbek",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            "For Networking You are Welcome",
            style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 47, 47, 224),
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ZoomTapAnimation(
                onTap: () async {
                  const url = "https://t.me/bakhodir1995";
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw "Couldn't find url";
                  }
                },
                child: CircleAvatar(
                  radius: 25,
                  child: Image.asset(
                    "assets/icons/telegram.png",
                  ),
                ),
              ),
              ZoomTapAnimation(
                onTap: () async {
                  const url = "https://www.instagram.com/bahodirturdimurodov/";
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw "Couldn't find url";
                  }
                },
                child: CircleAvatar(
                  radius: 25,
                  child: Image.asset(
                    "assets/icons/instagram.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              //
              ZoomTapAnimation(
                onTap: () async {
                  const url = "https://github.com/Bakhodir95";
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw "Couldn't find url";
                  }
                },
                child: CircleAvatar(
                  radius: 25,
                  child: Image.asset("assets/icons/github.png"),
                ),
              ),
            ],
          ),
          const Spacer(),
          ZoomTapAnimation(
            onTap: () async {
              const phoneNumber = 'tel: +998900144173';
              if (await canLaunch(phoneNumber)) {
                await launch(phoneNumber);
              } else {
                throw "Telfon qibomadi";
              }
            },
            child: Container(
              width: double.infinity,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xff000072),
              ),
              child: const Center(
                child: Text(
                  "Contact",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
