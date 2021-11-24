import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
 
class MyApp extends StatelessWidget {
  ///List of names
  final List<String> names = ["Kofi", "Ama", "John", "Edwin", "Asantewaa"];


  final List<String> images = [
    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fcommons.wikimedia.org%2Fwiki%2FFile%3AThe_future_(Unsplash).jpg&psig=AOvVaw3CHFBHrbOS-FaFLlZ6wBLq&ust=1637767834993000&source=images&cd=vfe&ved=2ahUKEwiIwcDh5q70AhVPP-wKHX96BzoQjRx6BAgAEAkhttps://www.google.com/url?sa=i&url=https%3A%2F%2Fcommons.wikimedia.org%2Fwiki%2FFile%3AThe_future_(Unsplash).jpg&psig=AOvVaw3CHFBHrbOS-FaFLlZ6wBLq&ust=1637767834993000&source=images&cd=vfe&ved=2ahUKEwiIwcDh5q70AhVPP-wKHX96BzoQjRx6BAgAEAk'
    'https://www.google.com/imgres?imgurl=https%3A%2F%2Fimages.unsplash.com%2Fphoto-1609220136506-e592262f2376%3Fixid%3DMnwxMjA3fDB8MHxzZWFyY2h8NHx8Y3Jhd2xpbmd8ZW58MHx8MHx8%26ixlib%3Drb-1.2.1%26w%3D1000%26q%3D80&imgrefurl=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fcrawling&tbnid=tGoDGR2XrL4HWM&vet=10CAkQxiAoAWoXChMI8PnIgsWv9AIVAAAAAB0AAAAAEAc..i&docid=Ovvq7clebQB1SM&w=1000&h=1499&itg=1&q=unsplash&ved=0CAkQxiAoAWoXChMI8PnIgsWv9AIVAAAAAB0AAAAAEAc'
    'https://www.google.com/url?sa=i&url=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fcrawling&psig=AOvVaw3pzkjqs3xo-GJCCedRfEur&ust=1637767915951000&source=images&cd=vfe&ved=0CAYQjRxqFwoTCPD5yILFr_QCFQAAAAAdAAAAABAK'
    'https://www.google.com/imgres?imgurl=https%3A%2F%2Fi.pinimg.com%2Foriginals%2F96%2F62%2F84%2F966284955fc23759f5458a73d3d5f154.jpg&imgrefurl=https%3A%2F%2Fwww.pinterest.com%2Fpin%2F42080577739264457%2F&tbnid=m-wFWSpqTPX5KM&vet=10CAkQxiAoAWoXChMI8PnIgsWv9AIVAAAAAB0AAAAAEBo..i&docid=FynE7Lx10O2-XM&w=600&h=400&itg=1&q=unsplash&ved=0CAkQxiAoAWoXChMI8PnIgsWv9AIVAAAAAB0AAAAAEBo'
    'https://www.google.com/url?sa=i&url=https%3A%2F%2Funsplash.com%2Fphotos%2FSu60_BGjVWU&psig=AOvVaw3pzkjqs3xo-GJCCedRfEur&ust=1637767915951000&source=images&cd=vfe&ved=0CAYQjRxqFwoTCPD5yILFr_QCFQAAAAAdAAAAABAc'
  ];
   
     @override
     Widget build(BuildContext context) {
       return  MaterialApp(
         home: Scaffold(
         appBar: AppBar(),
         body: ListView.builder(
           scrollDirection: Axis.vertical,
           itemBuilder: (BuildContext context, int index) => ListTile(
             leading: CircleAvatar(
                backgroundImage: NetworkImage(images[index]),
           ), // CircleAvatar
            title: const Text('what is your name?'),
            subtitle: Text(names[index])),
            // ListTitle
        itemCount: names.length,
         ),
         floatingActionButton: FloatingActionButton(
           onPressed: () {},
           child: const Icon (Icons.add),
         ) ) );
           
         }
   }

