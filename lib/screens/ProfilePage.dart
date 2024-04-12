import 'package:flutter/material.dart';
import 'package:tms/widgets/constant.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: MyThemeColor.backgroundColor,
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.only(
            left: he * 0.03,
            right: he * 0.03,
            top: he * 0.03,
            bottom: he * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              'First Name',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: he * 0.01,
            ),
            SizedBox(
              height: he * 0.045,
              child: TextFormField(
                  decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 10, top: 12),
                hintText: 'XYZ',
                hintStyle: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: MyThemeColor.textColor)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: MyThemeColor.textColor)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: MyThemeColor.textColor)),
              )),
            ),
            SizedBox(
              height: he * 0.02,
            ),
            Text(
              'Last Name',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: he * 0.01,
            ),
            SizedBox(
              height: he * 0.045,
              child: TextFormField(
                keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 10, top: 12),
                hintText: 'ABCD',
                hintStyle: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: MyThemeColor.textColor)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: MyThemeColor.textColor)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: MyThemeColor.textColor)),
              )),
            ),
            SizedBox(
              height: he * 0.02,
            ),
            Text(
              'Username',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: he * 0.01,
            ),
            Row(children: [
              SizedBox(
                height: he * 0.045,
                width: he * 0.20,
                child: TextFormField(
                    decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 10, top: 12),
                  hintText: 'Name',
                  hintStyle: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: MyThemeColor.textColor)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: MyThemeColor.textColor)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: MyThemeColor.textColor)),
                )),
              ),
              Expanded(
                child: Container(),
                ),
              TextButton(onPressed: (){}, child: const Text('Change Username', style: TextStyle(color:Colors.blueAccent),))
              ,const Icon(Icons.edit, color: Colors.blueAccent,size: 18,)
            ],),
            SizedBox(
              height: he * 0.02,
            ),
            Text(
              'Phone Number',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: he * 0.01,
            ),
            Row(children: [
              SizedBox(
                height: he * 0.045,
                width: he * 0.20,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 10, top: 12),
                  hintText: '+91123445698',
                  hintStyle: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: MyThemeColor.textColor)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: MyThemeColor.textColor)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: MyThemeColor.textColor)),
                )),
              ),
              Expanded(
                child: Container(),
                ),
              TextButton(onPressed: (){}, child: const Text('Change Number', style: TextStyle(color:Colors.blueAccent),)),
              const Icon(Icons.edit, color: Colors.blueAccent,size: 18,)
            ],),
            SizedBox(
              height: he * 0.02,
            ),
            Text(
              'Email Address',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: he * 0.01,
            ),
            Row(children: [
              SizedBox(
                height: he * 0.045,
                width: he * 0.24,
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 10, top: 12),
                  hintText: 'example@gmail.com',
                  hintStyle: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: MyThemeColor.textColor)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: MyThemeColor.textColor)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: MyThemeColor.textColor)),
                )),
              ),
              Expanded(
                child: Container(),
                ),
              TextButton(onPressed: (){}, child: const Text('Change Email ID', style: TextStyle(color:Colors.blueAccent),)),
              const Icon(Icons.arrow_forward_ios, color: Colors.blueAccent,size: 18,)
            ],),

            SizedBox(
              height: he * 0.02,
            ),
            Divider(
              color: Colors.grey[300],
              thickness: 1,
            ),
            SizedBox(
              height: he * 0.01,
            ),
            Row(
              children: [
                Text(
                  'Add Account',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.blueAccent,
                  size: 21,
                )
              ],
            ),
            SizedBox(
              height: he * 0.01,
            ),
            Row(
              children: [
                Text(
                  'Switch Account',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.blueAccent,
                  size: 21,
                )
              ],
            ),
            SizedBox(
              height: he * 0.021,
            ),
            GestureDetector(
              onTap: (){},
              child: const Text(
                'Log Out',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
