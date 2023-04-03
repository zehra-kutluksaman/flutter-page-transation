import 'package:flutter/material.dart';
import 'package:menu_card/profile.dart';
import 'package:menu_card/reports.dart';
import 'package:menu_card/tasks.dart';
import 'card_panel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int SelectedIndex = 0;

  // IndexController? indexController;
  // @override
  // void initState() {
  //   indexController = Get.put(IndexController(), tag: "index");
  //   super.initState();
  // }
  int pageIndex = 0;
  List<Widget> pageScreen = const [
    CardPanel(),
    Tasks(),
    Profile(),
    Reports(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 48, 44, 44),
      body: Column(
        children: [
          //üst bar container
          SizedBox(
            height: 140,
            width: 1700,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //circleavatarlar
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 5,
                      ),
                      SizedBox(width: 3),
                      CircleAvatar(
                        backgroundColor: Colors.yellow,
                        radius: 5,
                      ),
                      SizedBox(width: 3),
                      CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 5,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(60, 15, 10, 10),
                  child: Row(
                    children: [
                      const Text(
                        "System users",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      const SizedBox(width: 70),
                      Container(
                        height: 35,
                        width: 950,
                        // color: Color.fromARGB(255, 28, 24, 24),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 51, 48, 48),
                              width: 1,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(4),
                          color: const Color.fromARGB(255, 36, 32, 32),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.search,
                                color: Colors.grey,
                                size: 15,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "Enter employee name or position",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 65),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Add user",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 20, 10, 0),
                  child: Row(
                    children: [
                      //1.tıklama
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                color: pageIndex == 0
                                    ? Colors.blue
                                    : Colors.transparent),
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              pageIndex = 0;
                            });
                          },
                          child: const Text(
                            "User list",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(width: 25),
                      //2.tıklama
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                color: pageIndex == 1
                                    ? Colors.blue
                                    : Colors.transparent),
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              pageIndex = 1;
                            });
                          },
                          child: const Text(
                            "Tasks",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 25),
                      //3.tıklama
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                color: pageIndex == 2
                                    ? Colors.blue
                                    : Colors.transparent),
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              pageIndex = 2;
                            });
                          },
                          child: const Text(
                            "Profile",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 25),
                      //4.tıklama
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                color: pageIndex == 3
                                    ? Colors.blue
                                    : Colors.transparent),
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              pageIndex = 3;
                            });
                          },
                          child: const Text(
                            "Reports",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Color.fromARGB(255, 124, 112, 112),
            height: 0.8,
          ),
          //card container

          SizedBox(
            height: 550,
            width: 1700,
            child: pageScreen[pageIndex],
          ),

          //alt bar container
          Container(
            color: const Color.fromARGB(255, 37, 33, 33),
            child: Row(
              children: [
                SizedBox(
                  height: 60,
                  width: 50,
                  //color: Colors.orange,
                  child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnoUVwGQgl598AxJul3M3zS9qrnJIZ5YTyLA&usqp=CAU"),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                  child: Column(
                    children: const [
                      Text(
                        "Outgoing call:",
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      Text(
                        "Mark Kroneberger  1 (760) 705-886",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 800),
                Row(
                  children: const [
                    Text(
                      "00:34",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    SizedBox(width: 5),
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.red,
                    )
                  ],
                ),
                const SizedBox(width: 194),
                Container(
                  height: 60,
                  width: 50,
                  color: const Color.fromARGB(255, 70, 64, 64),
                  child: const Icon(
                    Icons.mic,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 60,
                  width: 50,
                  color: Colors.blue,
                  child: const Icon(
                    Icons.photo_camera_front,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 60,
                  width: 50,
                  color: Colors.red,
                  child: const Icon(
                    Icons.assistant_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
