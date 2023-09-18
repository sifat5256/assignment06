

import 'package:flutter/material.dart';


void main() {
  runApp(PhotoGalleryApp());
}

class PhotoGalleryApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Photo Gallery"),
          centerTitle: true,
        ),
        body: PhotoGallery(),
      ),
    );
  }
}

class PhotoGallery extends StatelessWidget {
  final List<String> imgUrls =[
    "https://thumbs.dreamstime.com/b/pink-cosmos-flowe-flowerbackground-112007426.jpg",
    "https://thumbs.dreamstime.com/b/pink-cosmos-flowe-flowerbackground-112007426.jpg",
    "https://thumbs.dreamstime.com/b/pink-cosmos-flowe-flowerbackground-112007426.jpg",
    "https://thumbs.dreamstime.com/b/pink-cosmos-flowe-flowerbackground-112007426.jpg",
    "https://thumbs.dreamstime.com/b/pink-cosmos-flowe-flowerbackground-112007426.jpg",
    "https://thumbs.dreamstime.com/b/pink-cosmos-flowe-flowerbackground-112007426.jpg",
    "https://thumbs.dreamstime.com/b/pink-cosmos-flowe-flowerbackground-112007426.jpg",
    "https://thumbs.dreamstime.com/b/pink-cosmos-flowe-flowerbackground-112007426.jpg",

  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Welcome to the Photo Gallery!",
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16.0),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16)
              ),

              hintText: "Search for photos...",

            ),
          ),
          SizedBox(height: 16.0),
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemCount:imgUrls.length ,
            shrinkWrap: true,

            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Cicked Image ${index + 1}."),
                    ),
                  );
                },
                child: Card(
                  elevation:0,

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.network(
                        imgUrls[index],
                        width: 100,
                        height: 100.0,
                        fit: BoxFit.cover,
                      ),


                        Text("Imaage ${index + 1}"),

                    ],
                  ),
                ),
              );
            },
          ),
          SizedBox(height: 16.0),
          
          ListTile(
            title: Text("Sample Photo 1"),
            subtitle: Text("Flower 1"),
            leading: ClipOval(
              child: Image.network(
                "https://thumbs.dreamstime.com/b/pink-cosmos-flowe-flowerbackground-112007426.jpg",
                width: 40, // Adjust the width and height as needed
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            title: Text("Sample Photo 2"),
            subtitle: Text("Flower 2"),
            leading: ClipOval(
              child: Image.network(
                "https://thumbs.dreamstime.com/b/pink-cosmos-flowe-flowerbackground-112007426.jpg",
                width: 40, // Adjust the width and height as needed
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
          ),

          ListTile(
            title: Text("Sample Photo 3"),
            subtitle: Text("Flower 3"),
            leading: ClipOval(
              child: Image.network(
                "https://thumbs.dreamstime.com/b/pink-cosmos-flowe-flowerbackground-112007426.jpg",
                width: 40, // Adjust the width and height as needed
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
          ),






          SizedBox(height: 16.0),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 170),
            child: ElevatedButton(

              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Photos Uploaded Successfully!"),
                  ),
                );
              },
              child: Icon(Icons.upload),
            ),
          ),
        ],
      ),
    );
  }
}
