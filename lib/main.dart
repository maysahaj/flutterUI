import 'package:flutter/material.dart';
import 'package:flutter_ui/colors.dart';
import 'package:flutter_ui/ex.dart';

void main() => runApp(MaterialApp(
  home: MyEx(),
  debugShowCheckedModeBanner: false,
));
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.arrow_back,color: Colors.white,),
        title: Text("Maysa Hajaj",style: TextStyle(
          color: Colors.white,
        ),),
      ),
      body: ListView(
       scrollDirection: Axis.vertical,
        shrinkWrap: false,
        children: <Widget>[
          Stack(
            overflow: Overflow.visible,
            alignment: Alignment.bottomLeft,
            children: <Widget>[

              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/3.5,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/1.jpg",),
                      fit: BoxFit.cover,
                    )
                ),
              ),
              Positioned(
                top: 170,
                left: 5,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    
                    shape: BoxShape.circle,
                    color: Colors.black,
                    image: DecorationImage(
                      image: AssetImage("assets/images/ht.jpg")
                    ),
                    border: Border.all(color: Colors.blue,width: 3)
                  ),
                ),
              ),
              Positioned(
                top:235,
                right: 10,
                height: 40,
                width: 100,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.blue,width: 2)
                  ),
                  child: Center(child: Text("follow",style: TextStyle(fontSize:16,color: Colors.blue,fontWeight: FontWeight.bold),)),
                ),
              ),

            ],
          ),
          SizedBox(height: 60,),
          Padding(
            padding: const EdgeInsets.only(left: 5,right:5),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text("Maysa Hajaj", style: TextStyle(fontWeight: FontWeight.bold,
                      color: Colors.white,fontSize: 25),),
                       SizedBox(width: 10,),
                      Icon(Icons.check_circle,color: Colors.blue,size: 25,),
                  
                    ],
                  ),
                SizedBox(height:10),
                  Text("@MAYSAHAJAJ",style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),),
                  SizedBox(height: 20,),
                  Row(
                    children: <Widget>[
                      Text("Touchdown.",style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18
                          ),),
                          SizedBox(width:8,),
                          Row(
                              children: <Widget>[ 
                                Text("#CountDownToMars",style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16
                            ),
                            ),
                            SizedBox(width:4,),
                            Icon(Icons.account_circle,color: Colors.deepOrange,size: 20,),
 
                         ]
                        ),
                         
                    ]),
                  SizedBox(height: 20,),
                  Row(
                    children: <Widget>[
                      Icon(Icons.link_sharp,color: Colors.grey,size: 22,),
                      SizedBox(width: 8,),
                      Text("nasa.gov",style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18
                      ),),
                      SizedBox(width: 10,),
                      Icon(Icons.location_on,color:Colors.grey,size: 22,),
                      SizedBox(width: 8,),
                      Text("Born october 1, 1958",style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18
                      ),)
                    ],
                    
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: <Widget>[
                      Icon(Icons.calendar_today_sharp,color: Colors.grey,size: 22,),
                      SizedBox(width: 10,),
                      Text("Joined December 2007",style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18
                      ),)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: <Widget>[
                      Text("204", style: TextStyle(
                          color: Colors.white,
                          fontWeight:FontWeight.w800,
                          fontSize: 18
                      ),),
                      SizedBox(width: 10,),
                      Text("Following", style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18
                      ),),
                      SizedBox(width: 20,),
                      Text("44.1M", style: TextStyle(
                        fontWeight:FontWeight.w800,
                          color: Colors.white,
                          fontSize: 20
                      ),),
                      SizedBox(width: 10,),
                      Text("Followers", style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18
                      ),)
                    ],
                  ),
                  SizedBox(height: 15,),
                  Text("Not followed by anyone you're following",style: TextStyle(fontSize:16,color: Colors.grey,),),
                  SizedBox(height: 15,),
                  Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left:5)),
                      Text("Tweets",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.blue,fontSize: 18),),
                      SizedBox(width: 18,),
                      Text("Tweets & replies",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.grey,fontSize: 18),),
                      SizedBox(width: 18,),
                      Text("Media",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.grey,fontSize: 18),),
                      SizedBox(width: 18,),
                      Text("Likes",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.grey,fontSize: 18),),
                    ],
                  ),
                   SizedBox(height: 5,),
                  Row(children: <Widget>[
                  Padding(padding: EdgeInsets.symmetric(horizontal: 1, vertical: 5),
                  child: Container(
                    height: 4,
                    width: 70,
                    color: Colors.blue,
                  ),
                  ),
                ],),
                 
                  SizedBox(height:8,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: Container(
                            height: 60,
                            width:60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: Colors.blue,width: 2)
                            ),
                            child: CircleAvatar(

                              backgroundImage: AssetImage("assets/images/ht.jpg"),
                      
                              )
                            ),

                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(Icons.push_pin,color: Colors.grey,size: 22,),
                                  SizedBox(width: 5,),
                                  Text("Pinned Tweet",style: TextStyle(fontSize:16,color: Colors.grey,fontWeight: FontWeight.bold),),                
                                  SizedBox(height:8,),
                                ]
                              
                              ),
                              SizedBox(height:10,),
                              Row(
                                children: <Widget>[
                                  Text("MAYSA", style: TextStyle(fontWeight: FontWeight.bold,
                                  color: Colors.white,fontSize:20),),
                                  SizedBox(width:3,),
                                  Icon(Icons.check_circle,color: Colors.blue,size:20,),
                                  SizedBox(width:3,),
                                  Text("@MAYSA", style: TextStyle(color: Colors.grey,fontSize:15)),
                                
                                ],
                              ),
                              SizedBox(height: 10,),
                              Text("TouchDown Confirmed. The",style: TextStyle(
                                color: Colors.white70,
                                fontSize: 16,
                              ),),  
                             Row(
                              children: <Widget>[ 
                                Text("#CountDownToMars",style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16
                            ),
                            ),
                            SizedBox(width:4,),
                            Icon(Icons.account_circle,color: Colors.deepOrange,size: 20,),
 
                         ]
                        ),
                        Text("the mission is just beginning.",style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16
                            ),),
                            SizedBox(height: 20,),
                              Container(
                                height: 150,
                                width: 250,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/photo.png"),
                                    fit: BoxFit.cover,
                                    
                                  )
                                ),
                              ),
                              SizedBox(height: 20,),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.mode_comment,color: Colors.grey,),
                                  SizedBox(width: 50,),
                                  Icon(Icons.repeat,color: Colors.grey,),
                                  SizedBox(width: 10,),
                                  Text("2k",style: TextStyle(color: Colors.grey),),
                                  SizedBox(width: 50,),
                                  Icon(Icons.favorite,color: Colors.red,),
                                  SizedBox(width: 10,),
                                  Text("1.6k",style: TextStyle(color: Colors.grey),),
                                ],
                              )
                            ],
                          ),

                        ),],
                    ),
                  )
                ,],
              ),
          ),

        ],
      ),
    );
  }
}

