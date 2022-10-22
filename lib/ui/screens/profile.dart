import 'package:flutter/material.dart';

import 'package:atb_plugin/globals.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ATB Plug-in Project'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      height: 100,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFFFE5000),
                            Color(0xFFFCA92A),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Center(
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(140)),
                            image:
                            DecorationImage(image: AssetImage(profileImage))),
                      ),
                    )
                  ),
                ],
              ),
            ),
            Text('Александр Кленин', style: TextStyle(fontWeight: FontWeight.bold),),
            Text('Администратор'),
            Row(
              children: const [
                Spacer(),
                Text('Бронирований 0'),
                Text('Уведомлений 0'),
                Spacer(),
              ],
            ),

            Column(
              children: [
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),

                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.album),
                        title: Text('Предстоящие брони', style: TextStyle(fontWeight: FontWeight.bold),),
                        trailing: Container(width: 5, color: Colors.grey,),
                        subtitle: Text('27 декабря'),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ],
        ),

      ),
    );
  }
}
