import 'package:flutter/material.dart';
import 'package:flutter_ui/ggg.dart';



class MyAppp extends StatefulWidget {
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyAppp> with SingleTickerProviderStateMixin {
  TabController tabController;
  Widget _tabBarView;
  var scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: 2,
      vsync: this,
    );
    _tabBarView = TabBarView(children: [
      DemoTab(parentController : scrollController),
      DemoTab(parentController : scrollController),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
          slivers: [
            
          SliverPersistentHeader(
            
                floating: true,
                pinned: true,
                
               
              delegate: MySliverAppBar(expandedHeight: 200),
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
                height: MediaQuery.of(context).size.height/7.5,
             ),
             
              Positioned(
                top:10,
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

        
                // Scrollable horizontal widget here
              ],
            ),
          ),
          ],
        ),
      );
  }
}

class DemoTab extends StatefulWidget {

  DemoTab({ 
    this.parentController
  });

  final ScrollController parentController;


  DemoTabState createState() => DemoTabState();
}

class DemoTabState extends State<DemoTab>
    with AutomaticKeepAliveClientMixin<DemoTab> {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  ScrollController _scrollController;

  ScrollPhysics ph;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();


    _scrollController.addListener((){


      var innerPos      = _scrollController.position.pixels;
      var maxOuterPos   = widget.parentController.position.maxScrollExtent;
      var currentOutPos = widget.parentController.position.pixels;

      if(innerPos >= 0 && currentOutPos < maxOuterPos) {

        //print("parent pos " + currentOutPos.toString() + "max parent pos " + maxOuterPos.toString());
        widget.parentController.position.jumpTo(innerPos+currentOutPos);

      }else{
        var currenParentPos = innerPos + currentOutPos;
        widget.parentController.position.jumpTo(currenParentPos);
      }


    });





    widget.parentController.addListener((){
      var currentOutPos = widget.parentController.position.pixels;
      if(currentOutPos <= 0) {
        _scrollController.position.jumpTo(0);
      }
    });


  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      key: UniqueKey(),
      controller: _scrollController,
      itemBuilder: (b, i) {
        return Container(
          height: 50,
          color: Colors.green,
          margin: EdgeInsets.only(bottom: 3),
          child: Text(
            i.toString(),
          ),
        );
      },
      itemCount: 30,
    );
  }
}