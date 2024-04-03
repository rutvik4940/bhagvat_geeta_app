import 'package:bhagvat_geeta_app/screen/home/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? providerR;
  HomeProvider? providerW;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<HomeProvider>().chapterGetData();
  }
  @override
  @override
  Widget build(BuildContext context) {
    providerR=context.read<HomeProvider>();
    providerW=context.read<HomeProvider>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Bhagvat Geeta" ),
        centerTitle: true,
        actions: [
          Switch(value: providerR!.changeTheme, onChanged:(value) {
            providerW!.setTheme();
          },)
        ],
      ),
      body:
      Column(
        children: [
          SizedBox(height: 10 ,),
          Expanded(
            child: ListView.builder(itemCount: providerW!.BhagvatGeetalist.length,itemBuilder: (context, index) {
              return InkWell(
                onTap: (){
                  Navigator.pushNamed(context,'verse',arguments:providerR!.BhagvatGeetalist![index]);
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  height: 120 ,
                  width: 80  ,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.orangeAccent
                  ),
                  child: Row(
                    children: [
                      Text("${providerR!.BhagvatGeetalist[index].id}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.brown ),),
                      SizedBox(width: 10, ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10, ),
                            Text("${providerR!.BhagvatGeetalist[index].title}",style: TextStyle(fontSize: 18,color: Colors.brown,fontWeight: FontWeight.bold),),
                            Text("${providerR!.BhagvatGeetalist[index].name}",style: TextStyle(fontSize: 18,color: Colors.brown,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                   ],
                  )
                ),
              );
            },),
          )
        ],
      ),
    );

  }
}
