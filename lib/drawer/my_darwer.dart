import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:gazatourism/in_app/home_page.dart';
import 'package:gazatourism/map/map_tourism.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

////--------------------------------------
Image userImageAvatar = Image.asset('assets/images/avatar.jpg');
File? userImage;

ImagePicker imagePickerAvatar = ImagePicker();


////--------------------------------
class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  double iconSize =28, textSize =18;
  @override
  Widget build(BuildContext context) {


      if (userImage != null) userImageAvatar =  Image.file(userImage!);


    return Drawer(

      child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
          ),
        child: Column(

          children: [
            Container(
              margin: EdgeInsets.only(top: 27) ,
              width: double.maxFinite,
              height: 250,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 62,
                    backgroundColor: Colors.amber,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: userImageAvatar.image,
                    ),
                  ),
                  Text(
                    "accountName",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Text(
                    "accountEmail",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  Expanded(
                      child: Align(alignment: Alignment.bottomCenter,
                        child:Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text("user image Setting",
                                style: TextStyle(fontSize: 15,color: Colors.white70)
                                ,),
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                    icon: Icon(Icons.add_a_photo,color:Colors.green ,
                                               size: 20,   ),
                                    onPressed:(){
                                      setState(() {
                                        takCamImage();
                                      });  }),
                                IconButton(
                                    icon: Icon(Icons.upload_file,color:Colors.amber ,
                                               size: 20,   ),
                                    onPressed: (){
                                      setState(() {
                                        takGallImage();
                                      });
                                    } ),
                              ],),
                          ],

                        ),
                      ),)
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                 border: Border.all(color: Colors.white,width: 1  )
              ),
              child: ListTile(
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePage(),
                      ));
                },
                  title: Text('Home Page',style: TextStyle(
                              color: Colors.white,fontSize: textSize)
                               ,),
                leading: Icon(Icons.home_filled,size: iconSize,color: Colors.white,),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white,width: 1  )
              ),
              child: ListTile(
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) =>GoogleMapT() ,)
                    ,);
                },
                title: Text('Tourism Map',style: TextStyle(
                    color: Colors.white,fontSize: textSize)
                  ,),
                leading: Icon(Icons.location_on,size: iconSize,color: Colors.white,),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white,width: 1 )
              ),
              child: ListTile(
                onTap: (){},
                title: Text('Profile',style: TextStyle(
                    color: Colors.white,fontSize: textSize)
                  ,),
                leading: Icon(Icons.account_circle_rounded,size: iconSize,color: Colors.white,),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white,width: 1 )
              ),
              child: ListTile(
                onTap: (){

                },
                title: Text('About us',style: TextStyle(
                    color: Colors.white,fontSize: textSize)
                  ,),
                leading: Icon(Icons.info,size: iconSize,color: Colors.white,),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white,width: 1)
              ),
              child: ListTile(
                onTap: (){},
                title: Text('Log Out',style: TextStyle(
                    color: Colors.white,fontSize: textSize)
                  ,),
                leading: Icon(Icons.logout,size: iconSize,color: Colors.white,),
              ),
            ),
            Expanded(child: Align(alignment: Alignment.center,
              child: Text('''
              
Tourism App provides you with
   everything you need for the 
       best tour of the Gaza 
        Strip,the best ever
       www.Tourism.com
             ''',
                style: TextStyle(fontSize: 12,color: Colors.white,),
            ),),),
          ],
        ),
      ),
    );
  }

  //////////////////////////


}


takGallImage() async {
  var  packImageCam =
  await imagePickerAvatar.pickImage(source: ImageSource.gallery);
  if (packImageCam != null) {
    userImage = File(packImageCam.path);
     //fre

  }
}

takCamImage() async {
  var packImageCam =
  await imagePickerAvatar.pickImage(source: ImageSource.camera);
  if (packImageCam != null) {
    userImage = File(packImageCam.path);
     //fre

  }
}