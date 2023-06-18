import 'package:azkar_app/Screens/about_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _counter = 0 ;
  String _content = 'استغفر الله';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
            'مسبحة أذكار',
                style: GoogleFonts.tajawal(),
        ),
        actions: [
          // IconButton(onPressed: (){
          //   Navigator.pushNamed(context,
          //       '/info_screen',
          //     arguments: <String , dynamic> {
          //     'message' : 'New Message Received',
          //     }
          //
          //   );
          // },
          //     icon: Icon(Icons.info)),
          // IconButton(onPressed: (){
          //   Navigator.push(context,
          //     MaterialPageRoute(
          //     builder: (context) => AboutScreen(message: 'About App',),
          //     ),
          //   );
          // },
          //   icon: Icon(Icons.warning),
          // ),

       PopupMenuButton<String>(
         onSelected: (value){
           if(value != _content){
             setState(() {
               _content = value;
               _counter = 0;
             });
           }
         },
         itemBuilder: (context) {
         return [
           PopupMenuItem(child: Text('سبحان الله'),
             value: 'سبحان الله',
             textStyle: GoogleFonts.tajawal(
               color: Colors.black,
             ),
             height: 25,
           ),
           PopupMenuDivider(),
           PopupMenuItem(child: Text('الحمد لله'),
             value: 'الحمد لله',
             textStyle: GoogleFonts.tajawal(
               color: Colors.black,
             ),
             height: 25,
           ),
           PopupMenuDivider(),
           PopupMenuItem(child: Text('الله أكبر'),
             value: 'الله أكبر',
             textStyle: GoogleFonts.tajawal(
               color: Colors.black,
             ),
             height: 25,
           ),
           PopupMenuDivider(),
           PopupMenuItem(child: Text('استغفر الله'),
             value: 'استغفر الله',
             textStyle: GoogleFonts.tajawal(
               color: Colors.black,
             ),
             height: 25,
           ),

         ];
       },),
        ],
      ),
      body: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              Colors.teal.shade300,
              Colors.blue.shade300
            ]
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              margin: EdgeInsets.only(left: 30 , right: 30 , bottom: 30 ),
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ) ,
              child: Row(
                children: [
                  Expanded(child: Text(_content,
                  textAlign: TextAlign.center,
                    style: GoogleFonts.tajawal(
                      fontWeight: FontWeight.bold,
                      height: 2,
                    ),
                  ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    alignment: Alignment.center,
                    color: Colors.blue.shade100,
                    child: Text(
                    _counter.toString(),
                    style: GoogleFonts.tajawal(
                      fontWeight: FontWeight.bold,
                      height: 2,
                      fontSize: 18,
                    ),),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),

              child: Row(
                children: [

                  Expanded(

                    flex: 2,
                    child: ElevatedButton(
                      onPressed: (){
                        setState(() {
                          ++_counter;
                        });
                        },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal.shade600,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.only(
                            topStart: Radius.circular(10),
                          ),
                        ),
                      ),
                      child: Text('تسبيح',
                      style: GoogleFonts.tajawal(
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),
                  ),

                  Expanded(
                    flex: 1,
                    child: ElevatedButton(onPressed: (){
                      setState(() => _counter = 0 );
                    },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal.shade200,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.only(
                            bottomEnd: Radius.circular(10),
                          ),
                        ),
                      ),
                      child: Text('اعادة',
                        style: GoogleFonts.tajawal(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal.shade800,
        child: Icon(Icons.add),
        onPressed: () {
         setState(() => ++_counter);
        },
      )
    );
  }
}
