import 'package:flutter/material.dart';

var btnFav = true;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NickySan's 1st Mission"),
        backgroundColor: const Color(0xFF264450),
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(top: 80),
        child: FloatingActionButton(
          onPressed: (){
            setState(() {
              if(btnFav){
                btnFav = false;
              }else{
                btnFav = true;
              }
            });
          },
          child: Icon(
            Icons.favorite,
            color: btnFav ? const Color(0xFF414141) : const Color(0xFFff4b4b),
          ),
          backgroundColor: const Color(0xFFffffff),
          elevation: 2,
        ),
      ),
      
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,

      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors:[
                  const Color(0xFF323232),
                  const Color(0xFF134d6c)
                ],
                    begin: new Alignment(0.0, 0.0),
                    end: new Alignment(0.0, 1.1)
              )
            ),

            child: Column(
              children: [
                Flexible(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/adobe_banner.png'),
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
                          margin: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: AssetImage(
                                'images/ps.png'
                              ), fit: BoxFit.cover
                            )
                          ),
                        )
                      ),

                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: AssetImage(
                                'images/ai.png'
                              ), fit: BoxFit.cover
                            )
                          ),
                        )
                      ),

                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: AssetImage(
                                'images/lr.png'
                              ), fit: BoxFit.cover
                            )
                          ),
                        )
                      ),

                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: AssetImage(
                                'images/pse.png'
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
                            "Adobe Images Software",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold 
                            ),
                          ),
                        ),
                      ),
                    Flexible(
                      flex: 2,
                      child: ListView(
                        padding: EdgeInsets.only(top: 10.00, left: 20.00, right: 15.00),
                        
                        children: [
                          Text(
                            'Who does not know this massive company named Adobe. Adobe is one of the biggest company for content creating world, such as editing photos, editing videos, newspaper, etc. Researcher says that Adobe has US 2.95 Billion Dollar worth of Net Worth at the year of 2019. I will explain you about some of the biggest Adobe application about photo and stuff down below. \n',
                            style: TextStyle(
                              fontSize: 16, color: Colors.white
                            ),
                          ),
                          
                          Text(
                            'Now on the first image, we got Adobe Photoshop. Adobe Photoshop is a raster graphics editor developed and published by Adobe Inc. for Windows and macOS. It was originally created in 1988 by Thomas and John Knoll. Since then, the software has become the industry standard not only in raster graphics editing, but in digital art as a whole. Photoshop naming scheme was initially based on version numbers. However, in October 2002 (following the introduction of Creative Suite branding) each new version of Photoshop was designated with CS plus a number e.g., the eighth major version of Photoshop was Photoshop CS and the ninth was Photoshop CS2. Photoshop CS3 through CS6 were also distributed in two different editions: Standard and Extended. With the introduction of the Creative Cloud branding in June 2013 (and in turn, the change of the CS suffix to CC) Photoshop licensing scheme was changed to that of software as a service rental model. Historically, Photoshop was bundled with additional software such as Adobe ImageReady, Adobe Fireworks, Adobe Bridge, Adobe Device Central and Adobe Camera RAW.\n',
                            style: TextStyle(
                              fontSize: 16, color: Colors.white
                            ),
                          ),
                          
                          Text(
                            'Moving on the second image, we got Adobe Illustrator. Adobe Illustrator is a vector graphics editor and design program developed and marketed by Adobe Inc. Originally designed for the Apple Macintosh, development of Adobe Illustrator began in 1985. Along with Creative Cloud, Illustrator CC was released. \n',
                            style: TextStyle(
                              fontSize: 16, color: Colors.white
                            ),
                          ),

                          Text(
                            'Next, we got Adobe Lightroom. Adobe Lightroom is a creative image organization and image manipulation software developed by Adobe Inc. as part of the Creative Cloud subscription family. It is supported on Windows, macOS, iOS, Android, and tvOS. \n',
                            style: TextStyle(
                              fontSize: 16, color: Colors.white
                            ),
                          ),

                          Text(
                            'Last but not least, we got Adobe Photoshop Express. Adobe Photoshop Express is a free image editing and collage making mobile application from Adobe Inc. The app is available on iOS, Android and Windows phones and tablets. It can also be installed on Windows desktop with Windows 8 and above, via the Microsoft Store.',
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
          )
        ],
      ),
    );
  }
}