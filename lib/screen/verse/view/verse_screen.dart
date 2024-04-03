import 'package:bhagvat_geeta_app/screen/home/model/home_model.dart';
import 'package:bhagvat_geeta_app/screen/home/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VerseScreen extends StatefulWidget {
  const VerseScreen({super.key});

  @override
  State<VerseScreen> createState() => _VerseScreenState();
}

class _VerseScreenState extends State<VerseScreen> {
  HomeProvider? providerR;
  HomeProvider? providerW;

  @override
  Widget build(BuildContext context) {
    providerR = context.read<HomeProvider>();
    providerW = context.watch<HomeProvider>();
    ChapterModel l1 =
        ModalRoute.of(context)!.settings.arguments as ChapterModel;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orangeAccent,
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
          title: Text("${l1.title}"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                  "${l1.url}",
                  fit: BoxFit.cover,
                  height: 300,
                  width: 400,
                ),
                const SizedBox(height: 20,),
                Text("${l1.name}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                const SizedBox(height: 20,),
                Text("${l1.shloka }",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
