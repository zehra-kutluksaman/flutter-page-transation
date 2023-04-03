import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:menu_card/todo_card_item.dart';

class CardPanel extends StatefulWidget {
  const CardPanel({super.key});

  @override
  State<CardPanel> createState() => _CardPanelState();
}

class _CardPanelState extends State<CardPanel>
    with SingleTickerProviderStateMixin {
  // IndexController? indexController;

  int cardIndex = 0;

  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    animation = CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn);
    super.initState();
    animationController.forward();
  }

  @override
  void dispose() {
    animationController;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      alignment: Alignment.bottomCenter,
      scale: animation,
      child: Scaffold(
        body: Container(
          color: const Color.fromARGB(255, 48, 44, 44),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 25, 0, 0),
                child: Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 64, 65, 65),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Personel board",
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ),
                    //const SizedBox(width: 10),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Row(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 168, 192, 215),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Total employees B ",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 4, 61, 136),
                                  fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 1000),
                    Container(
                      width: 130,
                      height: 30,
                      //color: const Color.fromARGB(255, 37, 33, 33),
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
                            Text(
                              "Compact view",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                            SizedBox(width: 28),
                            Text(
                              ">",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //card item
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //1.sütun card
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 40, 0, 0),
                    child: Container(
                      height: 400,
                      width: 250,
                      //color: const Color.fromARGB(255, 37, 33, 33),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 87, 81, 81),
                            width: 1,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(8),
                        color: Color.fromARGB(255, 40, 35, 35),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.fromLTRB(12, 15, 0, 0),
                                child: Text(
                                  "Admins",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              SizedBox(width: 120),
                              Padding(
                                padding: EdgeInsets.fromLTRB(25, 15, 0, 0),
                                child: Icon(
                                  Icons.more_horiz,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          // 1.tocard
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: cardIndex == 0
                                      ? Colors.blue
                                      : const Color.fromARGB(255, 66, 66, 66)),
                            ),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  cardIndex = 0;
                                });
                              },
                              child: const ToDoCardItem(
                                cardCircle: CircleAvatar(
                                  radius: 12,
                                  backgroundColor: Colors.blue,
                                  child: Text("M"),
                                ),
                                circleText: "Mark",
                                topText: "Online",
                                cardText:
                                    "Engaded in the techinal side of service development",
                                leftIcon: Icon(
                                  Icons.recommend,
                                  color: Colors.red,
                                  size: 15,
                                ),
                                leftText: "End a call",
                                topTextColor: Color.fromARGB(255, 10, 143, 13),
                              ),
                            ),
                          ),
                          Divider(),
                          //2.tocard
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: cardIndex == 1
                                      ? Colors.blue
                                      : Color.fromARGB(255, 66, 66, 66)),
                            ),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  cardIndex = 1;
                                });
                              },
                              child: const ToDoCardItem(
                                cardCircle: CircleAvatar(
                                  radius: 12,
                                  backgroundColor: Colors.purple,
                                  child: Text("A"),
                                ),
                                circleText: "Andre",
                                topText: "offline",
                                cardText:
                                    "Leading system administrator,support for internal system",
                                leftIcon: Icon(
                                  Icons.call,
                                  color: Colors.grey,
                                  size: 15,
                                ),
                                leftText: "Coll",
                                topTextColor:
                                    Color.fromARGB(255, 129, 120, 120),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.add,
                                  color: Colors.grey,
                                ),
                                Text(
                                  "Add employee to group",
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      //2.sütun card
                      Padding(
                        padding: const EdgeInsets.fromLTRB(50, 40, 0, 0),
                        child: Container(
                          height: 400,
                          width: 250,
                          //color: const Color.fromARGB(255, 37, 33, 33),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromARGB(255, 61, 57, 57),
                                width: 1,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(8),
                            color: Color.fromARGB(255, 40, 35, 35),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(12, 15, 0, 0),
                                    child: Text(
                                      "Technical experts",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  SizedBox(width: 70),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(25, 15, 0, 0),
                                    child: Icon(
                                      Icons.more_horiz,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              // 3.tocard
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: cardIndex == 2
                                          ? Colors.blue
                                          : Color.fromARGB(255, 66, 66, 66)),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      cardIndex = 2;
                                    });
                                  },
                                  child: const ToDoCardItem(
                                    cardCircle: CircleAvatar(
                                      radius: 10,
                                      backgroundColor: Colors.orange,
                                      child: Text("T"),
                                    ),
                                    circleText: "Taylor",
                                    topText: "offline",
                                    cardText:
                                        "Configuring any technicial things for you customers",
                                    leftIcon: Icon(
                                      Icons.call,
                                      color: Colors.grey,
                                      size: 15,
                                    ),
                                    leftText: "Coll",
                                    topTextColor:
                                        Color.fromARGB(255, 129, 120, 120),
                                  ),
                                ),
                              ),
                              Divider(),

                              //4.tocard
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: cardIndex == 3
                                          ? Colors.blue
                                          : Color.fromARGB(255, 66, 66, 66)),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      cardIndex = 3;
                                    });
                                  },
                                  child: const ToDoCardItem(
                                    cardCircle: CircleAvatar(
                                      radius: 12,
                                      backgroundColor: Colors.blue,
                                      child: Text("M"),
                                    ),
                                    circleText: "Max",
                                    topText: "online",
                                    cardText:
                                        "Help you with any technicial issue",
                                    leftIcon: Icon(
                                      Icons.call,
                                      color: Colors.green,
                                      size: 15,
                                    ),
                                    leftText: "Coll",
                                    topTextColor:
                                        Color.fromARGB(255, 10, 143, 13),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.add,
                                      color: Colors.grey,
                                    ),
                                    Text(
                                      "Add employee to group",
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 525),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(100, 35, 0, 0),
                    child: Container(
                      height: 60,
                      width: 250,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 147, 136, 136),
                            width: 1,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(4),
                        color: const Color.fromARGB(255, 51, 48, 48),
                      ),
                      child: const Center(
                        child: Text(
                          "Add Group",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
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
