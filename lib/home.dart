import 'package:flutter/material.dart';
class Home extends StatelessWidget {
   Home({ Key? key }) : super(key: key);

  List<Color> categoryColor = [
    Colors.green, Colors.pink, Colors.yellow, Colors.teal, Colors.deepPurple

  ];
  List<String> categoryText = [
    "fruit", "vegetable", "Beverages", "fish", "medicine"
  ];
  List<IconData> categoryIcon = [
    Icons.person,
    Icons.person_add,
    Icons.remove_red_eye_sharp,
    Icons.search,
    Icons.search
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(

        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text("Hi Lalisa Manoban", style: TextStyle(color: Colors.black,),),
        actions: [
          Icon(Icons.settings, color: Colors.black,),
        ],
        
     leading: Padding(
       padding: const EdgeInsets.all(8.0),
       child: Container(
        //  margin: EdgeInsets.only(left: 20),
         width: 30,
         height: 30,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(50),
           image: DecorationImage(image: AssetImage("assets/profile.jpg"), fit: BoxFit.cover),
        
         ),
       ),
     ),
      ),
body: Container(
  padding: EdgeInsets.symmetric(horizontal: 20),
  width: double.infinity,
  height: double.infinity,
  child: 
  ListView(
    children: [
      SizedBox(
        height: 40,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
    
          children: [

            Container(
              padding: EdgeInsets.symmetric(horizontal: 0,),
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: TextField(
               decoration: InputDecoration(
                 hintText: "Radish pumpkin Apple", 
                 hintStyle: TextStyle(color: Colors.black,),
                 border: InputBorder.none,
                 prefixIcon: Icon(Icons.search),
               ), 
              ),
            ),
            SizedBox(
              width: 50,
            ),
            Icon(Icons.mic),
          ],
        ),

      ),
      SizedBox(
        height: 30,
      ),
      Container(
        height: 200,
        width: 370,
decoration: BoxDecoration(
 image: DecorationImage(image: AssetImage("assets/profile.jpg", ), fit: BoxFit.cover,),
 borderRadius: BorderRadius.circular(20),

),
      ),
      Container(
        height: 50,
        
      ),
      Row(
        children: [
          Text("Category", style: TextStyle(color: Colors.black, fontSize: 20),),
          Spacer(),
          Text("more", style: TextStyle(color: Colors.red, fontSize: 20),),
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Container(
      height: 90,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: 
      (context, index) {
        return Column(
          children: [
            Container(
              margin: EdgeInsets.all(10.0),
              height: 50.0,
              width: 50.0,
              child: Icon(categoryIcon[index], color: Colors.black.withOpacity(0.5),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
color: categoryColor[index].withOpacity(0.8),
              ),
            ),
            Text(categoryText[index]),
          ],
        );
      } ,
  
       ),

      ),
      SizedBox(
        height: 20,
      ),
      Row(children: [
Text("Fresh New Item ", style: TextStyle(color: Colors.black, fontSize: 20),), 
Spacer(),
Text("More", style: TextStyle(color: Colors.red, ),)
      ],),
      SizedBox(
        height: 20,
      ),
      Container(
        height: 150,
        width: MediaQuery.of(context).size.width,
  child: ListView.builder

  (
    scrollDirection: Axis.horizontal,
    itemCount: 4,
    itemBuilder: (context, index) {
    
    return Container(
      margin: EdgeInsets.all(10),
height: 150,
width: 150,
decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(20),
  image: DecorationImage(image: AssetImage("assets/profile.jpg"), fit: BoxFit.cover),
),
    );
  }),
      )
    ],
  ),
),
    );
  }
}