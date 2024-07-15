import 'package:flutter/material.dart';
import 'package:flutter_vs_internee_app_with_splashscreen/screens/featured_widget.dart';
import 'package:flutter_vs_internee_app_with_splashscreen/screens/internship_seeall.dart';
import 'package:flutter_vs_internee_app_with_splashscreen/screens/popular_technologies.dart';
import 'package:flutter_vs_internee_app_with_splashscreen/screens/scroll_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String id= "home_screen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: AppBar(
        centerTitle: true,
        title:const Text("Internee.pk",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),),
        backgroundColor: const Color.fromARGB(255, 67, 204, 72),
        
      ),
      drawer: Drawer(
         //backgroundColor: const Color.fromARGB(255, 67, 204, 72),
        child:  ListView(
          padding: EdgeInsets.zero,
         children: const [

             UserAccountsDrawerHeader(
              accountName: Text("Saifullah"), 
              accountEmail: Text("saifullah.anwar52@gmail.com"),
              currentAccountPicture: CircleAvatar(
                 backgroundImage: AssetImage('images/saif.jpg'),
                 radius: 150,
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 67, 204, 72), // Set the header background color
              ),
              ),


              ListTile(
                leading:  Icon(Icons.home),
                title:  Text("Home"),
                // onTap: () {
                //   Navigator.pushNamed(context, FirstScreen.id);
                // },
              ),

              ListTile(
                leading:  Icon(Icons.favorite),
                title:  Text("Favourite"),
                
                // onTap: () {
                //   Navigator.pushNamed(context, FirstScreen.id);
                // },
                
                
              ),



              ListTile(
                leading:  Icon(Icons.pages),
                title:  Text("Page"),
                // onTap: () {
                //   Navigator.pushNamed(context, SecondScreen.id);
                // },
              ),

              ListTile(
                leading:  Icon(Icons.settings_accessibility),
                title:  Text("Setting"),
                // onTap: () {
                //   Navigator.pushNamed(context, ThirdScreen.id);
                // },
              ),

              ListTile(
                leading:  Icon(Icons.contact_page),
                title:  Text("About"),
                // onTap: () {
                //   Navigator.pushNamed(context, FirstScreen.id);
                // },
              ),

              

               ListTile(
                leading: Icon(Icons.logout_rounded),
                title: Text("Logout"),
              ),

              

              

              
          ],
        ),
        
      ),
      body: ListView(
        children: [

          const ScrollScreen(),

          
          
         //Featured Internships

            Padding(padding:const EdgeInsets.only(
              top: 20,
              left: 10,           
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                const Text(
                  "Featured Internships",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                ),
                TextButton(onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context)=>const InternshipSeeAll()));
                }, 
                child:const Text(
                  "See All",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 67, 204, 72),
                    fontWeight: FontWeight.bold),
                ),)
              ],
            )),

            //Popular Items Widget
            const FeaturedInternship(),



               //Popular Technologies

            Padding(padding: const EdgeInsets.only(
              top: 20,
              left: 10,           
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                const Text(
                  "Popular Technologies",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                ),
                TextButton(onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context)=>const InternshipSeeAll()));
                }, 
                child:const Text(
                  "See All",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 67, 204, 72),
                    fontWeight: FontWeight.bold),
                ),)
              ],
            )),

            //Popular Technologies
            const PopularTechnologies(),







                ]
                )
                );
                
  }
}