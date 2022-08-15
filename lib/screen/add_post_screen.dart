import 'package:flutter/material.dart';
import 'package:insta_clone/utils/colors.dart';

class AddPostScreen extends StatefulWidget {
  AddPostScreen({Key? key}) : super(key: key);

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){},
        ),
        title: const Text('Post to'),
        centerTitle: false,
        actions: [
          TextButton(onPressed: (){}, child: const Text('Post',style: TextStyle(
            color: Colors.blueAccent,
            fontWeight: FontWeight.bold,
            fontSize: 16
          ),))
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSn2deOLJVvvOkKwK34GfyPS9ByQ9RG_Q62Mq-xgl1T&s"),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width*0.4,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'write a caption...',
                    border: InputBorder.none,
                  ),
                  maxLines: 8,
                ),
              ),
              SizedBox(
                height: 45,
                width: 45,
                child: AspectRatio(aspectRatio: 487/451,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSn2deOLJVvvOkKwK34GfyPS9ByQ9RG_Q62Mq-xgl1T&s"),
                      fit: BoxFit.fill,
                      alignment: FractionalOffset.topCenter,
                    )
                  ),
                ),
                ),
              ),
              const Divider(),
            ],
          )
        ],
      ),
    );
  }
}
