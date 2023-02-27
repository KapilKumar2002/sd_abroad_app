import 'package:flutter/material.dart';
import 'package:sd_abroad_app/utils/constants.dart';
import 'package:sd_abroad_app/views/mainscreens/dashboardmain.dart';
import 'package:sd_abroad_app/views/mainscreens/homepage.dart';
import 'package:sd_abroad_app/views/mainscreens/profile.dart';
import 'package:sd_abroad_app/views/mainscreens/reminders.dart';
import 'package:sd_abroad_app/widgets/customdrawer.dart';
import 'package:sd_abroad_app/widgets/navigation.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  GlobalKey<ScaffoldState> key = GlobalKey();
  int index = 0;
  @override
  void initState() {
    // TODO: implement initState
    index = 0;
    super.initState();
  }

  List list = [HomePage(), ProfilePage(), DashboardMain()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      drawer: CustomDrawer(),
      appBar: index == 0
          ? AppBar(
              leading: IconButton(
                  onPressed: () {
                    key.currentState!.openDrawer();
                  },
                  icon: ImageIcon(
                    AssetImage("assets/images/menu.png"),
                    size: 22,
                  )),
              foregroundColor: black,
              backgroundColor: transparent,
              elevation: 0,
              actions: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                  IconButton(
                      onPressed: () {
                        nextScreen(context, Reminders());
                      },
                      icon: ImageIcon(
                        AssetImage(
                          "assets/images/noti.png",
                        ),
                        size: 17,
                      ))
                ])
          : null,
      body: list[index],
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80,
          color: black.withOpacity(.04),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    index = 0;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  decoration: decoration(index == 0 ? primaryColor : white, 20),
                  height: 40,
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/home.png",
                        color: index == 0 ? white : btabColor,
                        height: 17,
                      ),
                      horizontalSpace(5),
                      Text(
                        "Home",
                        style: bodyText10w500(index == 0 ? white : btabColor),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    index = 1;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  decoration: decoration(index == 1 ? primaryColor : white, 20),
                  height: 40,
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/person.png",
                        color: index == 1 ? white : btabColor,
                        height: 17,
                      ),
                      horizontalSpace(5),
                      Text(
                        "Profile",
                        style: bodyText10w500(index == 1 ? white : btabColor),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    index = 2;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  decoration: decoration(index == 2 ? primaryColor : white, 20),
                  height: 40,
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/dash.png",
                        color: index == 2 ? white : btabColor,
                        height: 17,
                      ),
                      horizontalSpace(5),
                      Text(
                        "Dashboard",
                        style: bodyText10w500(index == 2 ? white : btabColor),
                      )
                    ],
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
