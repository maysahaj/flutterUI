import 'package:flutter/material.dart';
import 'package:flutter_ui/colors.dart';
import 'package:sliver_fab/sliver_fab.dart';
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black,
      body: DefaultTabController(
    length: 3,
    child:new Builder(
        builder: (context) =>
        new SliverFab(
          
          floatingWidget:Container(
          child:Positioned(
              child:  Container(
            width: 120,
                 height: 120,
                  decoration: BoxDecoration(
                    
                    shape: BoxShape.circle,
                    color: Colors.black,
                    image: DecorationImage(
                      image: AssetImage("assets/images/ht.jpg")
                    ),
                    border: Border.all(color: Colors.blue,width: 3)
                  ),
                ),
         )
),floatingPosition: FloatingPosition(left: 2,top: -35),
         
          expandedHeight: 256.0,
          
          slivers: <Widget>[
            new SliverAppBar(
              expandedHeight: 256.0,
           
              pinned: true,
              
              backgroundColor: kPrimaryColo2,
              leading: IconButton(
              onPressed: () {},
        
        icon: Icon(Icons.arrow_back,size:26,),
      ),
      
      actions: <Widget>[
        IconButton(
          
          onPressed: () {},
          icon: Icon(Icons.more_vert,size:26,)
        )
      ],
      
              flexibleSpace: new FlexibleSpaceBar(
                background: new Image.asset(
                  "assets/images/1.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              
              
            ),  
           SliverList(
            delegate: SliverChildListDelegate(
              [
                Stack(
            overflow: Overflow.visible,
            alignment: Alignment.bottomLeft,
            children: <Widget>[
             
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/10,
             ),
             
              Positioned(
                top:10,
                right: 10,
                height: 40,
                width: 100,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.blue,width: 1.5)
                  ),
                  child: Center(child: Text("Follow",style: TextStyle(fontSize:18,color: Colors.blue,fontWeight: FontWeight.bold),)),
                ),
              ),

            ],
          ),
          
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
                              ),
                              
                              
                            ],
                          ),

                        ),],
                    ),
                  )
                ,],
              ),
          ),

        
                // Scrollable horizontal widget here
              ],
            ),
          ),
          ],
        ),
      ),)
    );
  }
}