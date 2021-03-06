import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color favcolor;
  int favvalue;
  final ctrlNama = TextEditingController();
  
  @override
  void initState() {
    super.initState();
    favcolor = Colors.white;
    favvalue = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mission1"),
        backgroundColor: Colors.black87,
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(top: 100),
        child: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: (){
            setState(() {
              if(favcolor == Colors.white){
                favcolor = Colors.red;
                favvalue = 1; 
              }else{
                favcolor = Colors.white;
                favvalue = 0;
              }
            });
          },
          child: Icon(
            Icons.favorite, color: favcolor,
          )
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            //margin: EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: LinearGradient( 
                colors:[
                  Colors.black87,
                  Colors.black,
                ],
                    begin: new Alignment(0.0, 0.0),
                    end: new Alignment(0.0, 1.0)
              )
            ),
            //color: Colors.amber,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible( 
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('https://www.whiteboardjournal.com/wp-content/uploads/2020/02/lofi.jpg'),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                ),

                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                         margin: EdgeInsets.only(top: 20, left: 10, right: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOcjeR0iIQgihSBkFynK66SGRkfynvI-smow&usqp=CAU'
                              ), fit: BoxFit.cover
                            )
                          ),
                        )
                      ),

                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(top: 20, left: 5, right: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                'https://www.authenticity.id/uploads/article/article_2624_Lofi.jpg'
                              ), fit: BoxFit.cover
                            )
                          ),
                        )
                      ),

                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(top: 20, left: 5, right: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                'https://i.ytimg.com/vi/MCkTebktHVc/maxresdefault.jpg'
                              ), fit: BoxFit.cover
                            )
                          ),
                        )
                      ),

                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(top: 20, left: 5, right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                'https://lh3.googleusercontent.com/NVQAW0TafRbfMPw-eSrsk8yedtakqsRC2cTAxfUDCjf7-SITS8w7NtFZ7ty5h9qjoYQ3ribNRdyMCDbOVhHPNYuNVw=w640-h400-e365-rj-sc0x00ffffff'
                              ), fit: BoxFit.cover
                            )
                          ),
                        )
                      ),
                    ],
                  ),
                ),

                Flexible(
                  flex: 4,
                  child: Column(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.only(top: 20.0),
                          child: Text(
                            "Lo-Fi",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    Flexible(
                      flex: 4,
                      child: ListView(
                        padding: EdgeInsets.only(top: 10.00, left: 20.00, right: 15.00),
                        children: [
                          Text(
                            'Lo-fi (short for low-fidelity) is a music or production quality in which elements usually regarded as imperfections of a recording or performance are audible, sometimes as a deliberate aesthetic choice. \n',
                            style: TextStyle(
                              fontSize: 16, color: Colors.white
                            ),
                          ),
                          
                          Text(
                            'The standards of sound quality (fidelity) and music production have evolved throughout the decades, meaning that some older examples of lo-fi may not have been originally recognized as such.\n',
                            style: TextStyle(
                              fontSize: 16, color: Colors.white
                            ),
                          ),
                          
                          Text(
                            'Lo-fi began to be recognized as a style of popular music in the 1990s, when it became alternately referred to as DIY music.\n',
                            style: TextStyle(
                              fontSize: 16, color: Colors.white
                            ),
                          ),

                          Text(
                            'Lo-fi aesthetics are idiosyncrasies associated with the recording process. More specifically, those that are generally viewed in the field of audio engineering as undesirable effects, such as a degraded audio signal or fluctuations in tape speed.\n',
                            style: TextStyle(
                              fontSize: 16, color: Colors.white
                            ),
                          ),

                          Text(
                            'The aesthetic may also extend to substandard or disaffected musical performances.[22] Recordings deemed unprofessional or "amateurish" are usually with respect to performance (out-of-tune or out-of-time notes) or mixing (audible hiss, distortion, or room acoustics).',
                            style: TextStyle(
                              fontSize: 16, color: Colors.white
                            ),
                          ),

                        ],
                        scrollDirection: Axis.vertical,
                      ),
                    )
                    ],
                  ),
                )
              ],
            ),
          ),
        ]
      ),
    );
  }
}