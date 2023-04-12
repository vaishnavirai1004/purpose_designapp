import 'package:flutter/material.dart';
import 'package:purpose_designui/View/userscreen.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHome> {
  final ScrollController _doctorhospital = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.perm_contact_calendar_outlined,
                  color: Colors.blue,
                ),
              )),
        ],
        toolbarHeight: 60,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Padding(
          padding: EdgeInsets.only(left: 50),
          child: Center(
              child: Text(
            'Home',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
          )),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: <Widget>[
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: ((context) => const UserProfile())));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(12),
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://cdn.pixabay.com/photo/2016/11/18/19/07/happy-1836445__340.jpg'))),
                          height: 50,
                          width: 50,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Hey Allen",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22),
                            ),
                            Text(
                              "St. louis Road.LA",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 111, 111, 111)),
                            ),
                          ]),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5, left: 5, top: 5),
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          suffixIcon: const Icon(Icons.mic,
                              color: Colors.black, size: 30),
                          prefixIcon: const Icon(Icons.search,
                              color: Colors.black, size: 30),
                          hintText: 'Physician',
                          hintStyle: const TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.grey.shade100,
                          enabledBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: SizedBox(
                            height: 35,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  backgroundColor: Colors.white,
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Doctors',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: SizedBox(
                            height: 35,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  // primary: Colors.white,
                                  // onSurface: Colors.purpleAccent,
                                  //shadowColor: Colors.purpleAccent
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Hospitals',
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ))),
                      ),
                    ],
                  )
                ]),
              ),
              const SizedBox(height: 3),
              Padding(
                padding: const EdgeInsets.only(right: 7, left: 7),
                child: Column(
                  children: <Widget>[
                    Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            height: 350,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25.0))),
                            child: RawScrollbar(
                              controller: _doctorhospital,
                              crossAxisMargin: 10,
                              thumbColor: const Color(0xFF2B73B7),
                              radius: const Radius.circular(20),
                              child: ListView.builder(
                                controller: _doctorhospital,
                                itemCount: 10,
                                itemBuilder:
                                    (BuildContext context, int index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 15, top: 7),
                                    child: Stack(children: <Widget>[
                                      Card(
                                        elevation: 10,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        child: Container(
                                          height: 80,
                                          width: 320,
                                          decoration: const BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15.0))),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.only(
                                                        left: 10),
                                                child: Row(
                                                  children: <Widget>[
                                                    const Text(
                                                      'ACMH Hospital',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color:
                                                              Colors.black),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets
                                                              .only(left: 30),
                                                      child: IconButton(
                                                          onPressed: () {},
                                                          icon: const Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.yellow,
                                                          )),
                                                    ),
                                                    const Text(
                                                      '(9.5/10)',
                                                      style: TextStyle(
                                                          fontSize: 12),
                                                    ),
                                                    const Text(
                                                      '  \$ 400',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight
                                                                  .bold),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.only(
                                                  left: 10,
                                                ),
                                                child: Row(
                                                  children: <Widget>[
                                                    const Text(
                                                      'Place Name',
                                                      style: TextStyle(
                                                          fontSize: 13,
                                                          color: Color.fromARGB(255, 111, 111, 111)
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets
                                                              .only(left: 110),
                                                      child: Container(
                                                        height: 28,
                                                        decoration: const BoxDecoration(
                                                            color: Colors
                                                                .blueAccent,
                                                            borderRadius: BorderRadius
                                                                .all(Radius
                                                                    .circular(
                                                                        10.0))),
                                                        child: Row(
                                                          children: <Widget>[
                                                            const Icon(
                                                              Icons
                                                                  .location_on_sharp,
                                                              size: 13,
                                                            ),
                                                            TextButton(
                                                                onPressed:
                                                                    () {},
                                                                child:
                                                                    const Text(
                                                                  '4.3 KM',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          12,
                                                                      color: Colors
                                                                          .white),
                                                                ))
                                                          ],
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 290, top: 15),
                                        child: Card(
                                          elevation: 10,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          ),
                                          child: Container(
                                            height: 40,
                                            decoration: const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.all(
                                                        Radius.circular(
                                                            10.0))),
                                            child: IconButton(
                                                onPressed: () {},
                                                icon: const Icon(
                                                  Icons.call,
                                                  size: 20,
                                                  color: Colors.green,
                                                )),
                                          ),
                                        ),
                                      ),
                                    ]),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: SizedBox(
                        height: 200,
                        width: 700,
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(20), // Image border
                          child: SizedBox.fromSize(
                            size: const Size.fromRadius(48), // Image radius
                            child: Image.network(
                                'https://eorisis.com/images/web-design/joomla-extensions/google-maps/screenshots/google-maps-content-plugin-joomla-extension-map-demo.png',
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      height: 40,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.zoom_out_map_sharp,
                            size: 28,
                          )),
                    ),
                  ),
                  Positioned(
                    bottom: 15,
                    right: 10,
                    child: Container(
                      height: 40,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.chat_bubble_outline_sharp,
                            color: Colors.blue,
                            size: 28,
                          )),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
