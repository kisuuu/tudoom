import 'dart:io';

import 'package:emojis/emoji.dart';
import 'package:emojis/emojis.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:tudoom/constants/constants.dart';
import 'package:tudoom/screens/profile/tudoom_avatar.dart';
import 'package:tudoom/screens/tudoom%20world/tudoom_world.dart';

class TudoomProfile extends StatefulWidget {
  const TudoomProfile({Key? key}) : super(key: key);

  @override
  State<TudoomProfile> createState() => _TudoomProfileState();
}

class _TudoomProfileState extends State<TudoomProfile> {
  ImagePicker imagePicker = ImagePicker();

  File? image;

  File? pickedFile;

  Future pickImageFromCamera() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) {
        return;
      }

      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  Future pickImageFromGallery() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) {
      return;
    }

    final imageTemporary = File(image.path);
    setState(() => this.image = imageTemporary);
  }

  Emoji? womanBlond = Emoji.byChar(Emojis.womanBlondHair)!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const BackButton(color: white),
        centerTitle: true,
        backgroundColor: purple,
        title: Text(
          'Samantha Williams',
          style: GoogleFonts.workSans(
            color: white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TudoomWorldScreen()),
              );
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.more_vert,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (context, _) {
            return [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Container(
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
                            horizontal: 20,
                          ),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 15,
                              ),
                              // profile image
                              Center(
                                child: Stack(
                                  children: [
                                    Container(
                                      width: 140,
                                      height: 140,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                            "assets/images/TudoomProfile.jpg",
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child: InkWell(
                                        onTap: () {
                                          showModalBottomSheet(
                                            context: context,
                                            builder: ((builder) =>
                                                bottomSheet()),
                                          );
                                        },
                                        child: Container(
                                          height: 35,
                                          width: 35,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: purple,
                                          ),
                                          child: const Icon(
                                            Icons.camera_alt_outlined,
                                            color: white,
                                            size: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              // user name
                              Text(
                                "@samantha_williams",
                                style: GoogleFonts.workSans(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              // profile name
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Headmentor ",
                                    style: GoogleFonts.workSans(
                                      color: borderColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const Text(
                                    "${Emojis.sunflower} ${Emojis.sunflower} ${Emojis.sunflower}",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Divider(
                                thickness: 1,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              // post follower and following
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  buildTudoomProfileLabels(
                                    text: '120',
                                    label: 'Posts',
                                  ),
                                  buildTudoomProfileLabels(
                                    text: '9.0 M',
                                    label: 'Followers',
                                  ),
                                  buildTudoomProfileLabels(
                                    text: '220',
                                    label: 'Following',
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              // levels
                              LinearPercentIndicator(
                                leading: Text(
                                  'Lvl 21',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    color: borderColor,
                                    fontSize: 16,
                                  ),
                                ),
                                trailing: Text(
                                  'Lvl 22',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    color: borderColor,
                                    fontSize: 16,
                                  ),
                                ),
                                lineHeight: 17,
                                linearGradient: const LinearGradient(
                                  colors: <Color>[
                                    Color.fromRGBO(255, 227, 2, 1),
                                    Color.fromRGBO(255, 155, 48, 1),
                                  ],
                                ),
                                backgroundColor:
                                    const Color.fromRGBO(217, 217, 217, 1),
                                barRadius: const Radius.circular(10),
                                percent: .5,
                                animation: true,
                                animationDuration: 1000,
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              // badges
                              SizedBox(
                                height: 50,
                                child: ListView.builder(
                                  physics: const BouncingScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 15,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Row(
                                      children: [
                                        Container(
                                          width: 50,
                                          decoration: const BoxDecoration(
                                            color: Color.fromRGBO(
                                                217, 217, 217, 1),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              // follow, message and share
                              Row(
                                children: <Widget>[
                                  // follow button
                                  Expanded(
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: purple,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                        ),
                                        fixedSize: const Size(100, 50),
                                      ),
                                      onPressed: () {},
                                      child: SizedBox(
                                        child: Text(
                                          "Following",
                                          style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  // message button
                                  Expanded(
                                    child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                        side: const BorderSide(
                                          color: biocolor,
                                        ),
                                        primary: biocolor,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                        ),
                                        fixedSize: const Size(100, 50),
                                      ),
                                      onPressed: () {
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(
                                        //       builder: (context) => TudoomProfile()),
                                        // );
                                      },
                                      child: SizedBox(
                                        child: Text(
                                          "Message",
                                          style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  // share button
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                        side: const BorderSide(
                                          color: biocolor,
                                        ),
                                        primary: biocolor,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                        ),
                                        fixedSize: const Size(100, 50),
                                      ),
                                      onPressed: () {
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(
                                        //       builder: (context) => TudoomProfile()),
                                        // );
                                      },
                                      child: SizedBox(
                                        child: Text(
                                          "Share",
                                          style: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ];
          },
          body: Column(
            children: <Widget>[
              Material(
                color: Colors.white,
                child: TabBar(
                  labelColor: purple,
                  unselectedLabelColor: profiletabColor,
                  indicatorWeight: 1,
                  indicatorColor: purple,
                  labelStyle: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  tabs: const [
                    Tab(
                      text: "Avatars",
                    ),
                    Tab(
                      text: "Gifts",
                    ),
                    Tab(
                      text: "Stickers",
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    TudoomAvatarScreen(),
                    Text("data"),
                    Text("data"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void takePhoto(ImageSource source) async {
    final pickedImage =
        await imagePicker.pickImage(source: source, imageQuality: 100);

    pickedFile = File(pickedImage!.path);
    print(pickedFile!.path);
    // setState(() {
    //   _imageFile = PickedFile!;
    // });
  }

  Widget bottomSheet() {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(
        20,
      ),
      child: Column(
        children: <Widget>[
          const Text(
            "Choose Profile Photo",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton.icon(
                icon: const Icon(
                  Icons.camera,
                  color: black,
                ),
                onPressed: () {
                  pickImageFromCamera();
                },
                label: const Text(
                  "Cameras",
                  style: TextStyle(
                    color: black,
                  ),
                ),
              ),
              TextButton.icon(
                icon: const Icon(
                  Icons.image,
                  color: black,
                ),
                onPressed: () {
                  pickImageFromGallery();
                },
                label: const Text(
                  "Gallery",
                  style: TextStyle(
                    color: black,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class buildTudoomProfileLabels extends StatelessWidget {
  String text;
  String label;
  buildTudoomProfileLabels({
    Key? key,
    required this.text,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            color: purple,
            fontSize: 18,
          ),
        ),
        Text(
          label,
          style: GoogleFonts.workSans(
            fontSize: 16,
            color: biocolor,
          ),
        ),
      ],
    );
  }
}
