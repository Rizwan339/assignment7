// import 'package:assignment7/arguments.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key, required this.title,
   required this.name, required this.email, required this.number});

  final String title;
  final String name;
  final String email;
  final String number;

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[900],
      appBar: AppBar(
        backgroundColor: Colors.teal[900],
        title: Text(widget.title,style: const TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 41, 71, 42),
                  radius: 100,
                  // backgroundImage: AssetImage("assets/bird-box.jpg"),
                ),
                Positioned(
                  bottom: 20,
                  left: 150,
                  child: CircleAvatar(
                    child: Icon(
                      Icons.camera_alt_rounded,
                      color: Color.fromARGB(255, 41, 71, 42),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Icon(Icons.person,color: Colors.white,),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Name",style: TextStyle(color: Colors.white),),
                    Text(widget.name,style: const TextStyle(color: Colors.white)),
                    const Text("This is not your username or pin.",style: TextStyle(color: Colors.white),),
                  ],
                ),
                const SizedBox(
              width: 30,
            ),
                const Icon(Icons.edit,color:Color.fromARGB(255, 41, 71, 42),)
              ],
            ),
            const Divider(
              height: 20,
              color: Colors.white,
            ),
            Row(
              children: [
                const Icon(Icons.email,color: Colors.white),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Email",style: TextStyle(color: Colors.white),),
                    Text(widget.email,style: const TextStyle(color: Colors.white),),
                  ],
                ),
                const SizedBox(
              width: 125,
            ),
                const Icon(Icons.edit,color: Color.fromARGB(255, 41, 71, 42),)
              ],
            ),
            const Divider(
              height: 20,
            ),
             Row(
              children: [
                const Icon(Icons.phone,color: Colors.white),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Phone",style: TextStyle(color: Colors.white),),
                    Text(widget.number,style: const TextStyle(color: Colors.white),),
                  ],
                ),
                const SizedBox(
              width: 150,
            ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
