import 'package:flutter/material.dart';

class Answer1 extends StatefulWidget {
  const Answer1({super.key});

  @override
  State<Answer1> createState() => _Answer1State();
}

class _Answer1State extends State<Answer1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('โปรไฟล์ผู้ใช้'),
          backgroundColor: Colors.blue,
          centerTitle: false,
        ),
        body: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/Image.jpeg'),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'ชื่อผู้ใช้: Narin Srimongkorn',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'อีเมล: Srimongkorn_n@su.ac.th',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfileItem(icon: Icons.settings, text: 'การตั้งค่า'),
                  ProfileItem(icon: Icons.change_circle, text: 'เปลี่ยนรหัสผ่าน'),
                  ProfileItem(icon: Icons.privacy_tip, text: 'ความเป็นส่วนตัว'),
                ],
              ),
            ),
            Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('แก้ไขโปรไฟล์'),
                            ),
                          );
                        }, 
                        child: Text('แก้ไขโปรไฟล์'),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('ออกจากระบบ')
                            ),
                          );
                        }, child: Text('ออกจากระบบ')
                    ),
                  ],
                )
                
            )
          ],
        ),
      ),
    );
  }
}

class ProfileItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const ProfileItem({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Icon(icon,color: Colors.blue,),
        title: Text(text),
        onTap: () {},
      ),
    );
  }
}
