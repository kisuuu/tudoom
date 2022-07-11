import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/constants.dart';

class ParticipiantsScreen extends StatefulWidget {
  const ParticipiantsScreen({Key? key}) : super(key: key);

  @override
  State<ParticipiantsScreen> createState() => _ParticipiantsScreenState();
}

class _ParticipiantsScreenState extends State<ParticipiantsScreen> {
  List<User> users = [
    const User(
      name: 'Angela yu',
      username: 'factt.u',
      image: 'assets/images/participian01.jpg',
      level: 'Lvl 15',
    ),
    const User(
      name: 'Ishh',
      username: 'ishikapandeyy_',
      image: 'assets/images/participian02.jpg',
      level: 'Lvl 29',
    ),
    const User(
      name: 'saksh!!',
      username: 'saakshiii.3',
      image: 'assets/images/participian03.jpg',
      level: 'Lvl 25',
    ),
    const User(
      name: 'Monisha mohan menon',
      username: 'Monisha.mohan.menon',
      image: 'assets/images/participian04.jpg',
      level: 'Lvl 30',
    ),
    const User(
      name: 'Anisha',
      username: 'aaaniiissshhhaaa',
      image: 'assets/images/participian05.jpg',
      level: 'Lvl 29',
    ),
    const User(
      name: 'Anushaya Singh_',
      username: 'anushayaaa_',
      image: 'assets/images/participian06.jpg',
      level: 'Lvl 89',
    ),
    const User(
      name: 'pooja kothari',
      username: 'pooja_kothari',
      image: 'assets/images/participian07.jpg',
      level: 'Lvl 50',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const BackButton(color: white),
        centerTitle: true,
        backgroundColor: purple,
        title: Text(
          'Participiants',
          style: GoogleFonts.poppins(
            color: white,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Container(
        color: purple,
        child: Container(
          decoration: const BoxDecoration(
            color: white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                15,
              ),
              topRight: Radius.circular(
                15,
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 20,
            ),
            child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 28,
                      backgroundImage: AssetImage(user.image),
                    ),
                    title: Text(user.name),
                    subtitle: Text(user.username),
                    trailing: Container(
                      height: 20,
                      width: 40,
                      decoration: const BoxDecoration(
                        color: purple,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            15,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class User {
  final String name;
  final String username;
  final String image;
  final String level;

  const User({
    required this.name,
    required this.username,
    required this.level,
    required this.image,
  });
}
