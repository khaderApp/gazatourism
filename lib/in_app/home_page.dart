import 'package:flutter/material.dart';
import 'package:gazatourism/back/castm.dart';
import 'package:gazatourism/drawer/my_darwer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:gazatourism/sors_material/src_tourism.dart';
import 'search.dart';
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('Tourism'),
        actions: [IconButton(onPressed: (){
          showSearch(context: context, delegate: Search() );
        },
            icon: Icon(Icons.search,color: Colors.white,)),],
        centerTitle: true,
      ),
      drawer: MyDrawer(),
      body: Container(
        width: double.infinity,
        height: double.infinity,

        decoration: BoxDecoration(

          image: DecorationImage(image: AssetImage('assets/images/Fotolia.png',),
              fit: BoxFit.cover ),
        ),
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: 160,
              color: Colors.black87,
              child:CarouselSlider.builder(
                itemCount: SRCM.images.length,
                options: CarouselOptions(
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlay: true,
                  aspectRatio: 0.1,
                  enlargeCenterPage: true,
                ),
                itemBuilder: (context, index, realIdx) {
                  return Container(
                    child: Center(
                        child: Image.asset(SRCM.images[index],
                            fit: BoxFit.cover, width: 1000,),),
                  );
                },
              )),
            ///////////////////////////////////////////////////
            Container(
              color: Colors.yellowAccent,
              alignment: Alignment.center,
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  InkWell(
                    onTap: (){

                   },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 3),
                       height: 20,
                       width: 60,
                      alignment: Alignment.center,
                      child: Text('Gona',style: TextStyle(fontSize: 20,color: Colors.white),),
                      decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(7)
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){

                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 3),
                      height: 20,
                      width: 60,
                      alignment: Alignment.center,
                      child: Text('Hura',style: TextStyle(fontSize: 20,color: Colors.white),),
                      decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.circular(7)
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){

                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 3),
                      height: 20,
                      width: 60,
                      alignment: Alignment.center,
                      child: Text('Gona',style: TextStyle(fontSize: 20,color: Colors.white),),
                      decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.circular(7)
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){

                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 3),
                      height: 20,
                      width: 60,
                      alignment: Alignment.center,
                      child: Text('Gona',style: TextStyle(fontSize: 20,color: Colors.white),),
                      decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.circular(7)
                      ),
                    ),
                  ),
                ],
              ),
            ),
            /////////////////////////////////////////////////
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                  itemCount: SRCM.name.length ,
                  itemBuilder: (context, x) {
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: InkWell(
                         onTap: (){
                           SRCM.indexU = x ;
                           Navigator.of(context).push(
                             MaterialPageRoute(builder: (context) => CastmArea(),)
                           );
                         },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Text('${SRCM.name[x]}',style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),),
                            SizedBox(height: 1.5,),
                              //**///
                            Text('${SRCM.shortDes[x]}',style: TextStyle(
                              fontSize: 15,
                              color: Colors.white38,

                            ),),
                            SizedBox(height: 10,),

                           Container(
                             width: double.maxFinite,
                             height: 160,
                            // child: Image.network(images[x],fit: BoxFit.cover) ,

                             decoration: BoxDecoration(

                               borderRadius: BorderRadius.all(
                                   Radius.circular(17)),
                               image: DecorationImage(fit: BoxFit.cover,
                                   image: Image.asset(SRCM.images[x],).image )
                             ),
                           )
                          ],
                        ),
                      ),
                    );
                  },),
            )
            ],
        ),
      ),
    );
  }
}
