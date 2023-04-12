import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(
                  "https://cdn.pixabay.com/photo/2016/11/21/12/42/beard-1845166__340.jpg",
                  fit: BoxFit.fitHeight,
                ),
                appsbar(),
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.3),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      usersDetails(),
                      Container(
                        padding: const EdgeInsets.only(
                            right: 15, left: 15, bottom: 10),
                        width: double.infinity,
                        child: Column(
                          children: [
                            Headerprofile(
                              title: "Profile Settings",
                              iconColor: Colors.blue,
                              a: 'https://img.icons8.com/ultraviolet/256/edit.png',
                            ),
                            Settingsuser(
                              details: "1234567890",
                              essential: "Phone no",
                            ),
                            const SizedBox(height: 10),
                            Settingsuser(
                              details: "allenaj@gmail.com",
                              essential: "Email",
                            ),
                            const SizedBox(height: 10),
                            Settingsuser(
                              details: '*********',
                              essential: "Password",
                            ),
                            const SizedBox(height: 10),
                            Headerprofile(
                                a: 'https://img.icons8.com/parakeet/256/lock.png',
                                title: "Insurence Details",
                                iconColor: Colors.red),
                            Settingsuser(
                              details: "Allen",
                              essential: "Insurence name",
                            ),
                            const SizedBox(height: 10),
                            Settingsuser(
                              details: "xxxxxxxx",
                              essential: "Insurence number",
                            ),
                            const SizedBox(height: 10),
                            Settingsuser(
                              details: "\$ XXX",
                              essential: "Specialist Co-insurance",
                            ),
                            const SizedBox(height: 10),
                            Settingsuser(
                              details: "\$ XXX",
                              essential: "Primary Care Co-insurance",
                            ),
                            const SizedBox(height: 10),
                            Headerprofile(
                              title: "Account",
                              iconColor: Colors.blue,
                              a: 'https://img.icons8.com/ultraviolet/256/edit.png',
                            ),
                            Settingsuser(
                              details: "\$ XXX",
                              essential: "Notification",
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("Two-"),
                                CupertinoSwitch(
                                  activeColor: Colors.blue,
                                  // value: isTwoFactorEnabled,
                                  onChanged: (val) {
                                    setState(() {
                                      // isTwoFactorEnabled = val;
                                    });
                                  },
                                  value: true,
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Country",
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "USA",
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 18,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }

  Widget Settingsuser({required String essential, required String details}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          essential,
        ),
        Text(details)
      ],
    );
  }

  Widget Headerprofile({title, icon, iconColor, required String a}) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 22,
              ),
            ),
            Icon(
              icon,
              color: iconColor,
            ),
            SizedBox(height: 30, child: Image(image: NetworkImage(a)))
          ],
        ),
        Divider(
          thickness: 3,
          color: Colors.grey.shade400,
        ),
      ],
    );
  }

  Widget usersDetails() {
    return Row(
      children: [
        Expanded(
            child: Padding(
          padding: const EdgeInsets.only(bottom: 20, left: 10),
          child: Stack(
            children: [
              const CircleAvatar(
                radius: 70,
                backgroundColor: Color(0xFF2B73B7),
                child: CircleAvatar(
                  radius: 67,
                  backgroundImage: NetworkImage(
                      'https://cdn.pixabay.com/photo/2016/11/18/19/07/happy-1836445__340.jpg'),
                ),
              ),
              Positioned(
                bottom: 1,
                right: 1,
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.grey.shade300,
                    child: const Center(
                      child: Icon(
                        Icons.edit,
                        size: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )),
        Expanded(
          flex: 2,
          child: Container(
            padding: const EdgeInsets.only(left: 50, right: 20, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Flexible(
                      child: Text(
                        'AJ.ALLEN',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Icon(Icons.check)
                  ],
                ),
                const SizedBox(height: 3),
                const Text(
                  "30.05.1996",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  padding: const EdgeInsets.only(
                      top: 5, bottom: 5, left: 10, right: 10),
                  decoration: const BoxDecoration(
                    color: Color(0xFF2B73B7),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Text(
                    "Male",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget appsbar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: const Text(
        "Profile",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
      ),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: [
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 3,
                blurRadius: 7,
                offset: const Offset(0, 2), // changes position of shadow
              ),
            ],
          ),
          child: const Icon(
            Icons.motion_photos_on_outlined,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
