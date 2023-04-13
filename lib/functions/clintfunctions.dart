import 'package:clinic/loginpage/login.dart';
import 'package:clinic/models/httpHandeler.dart';
import 'package:clinic/models/model1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class clintfunction extends StatefulWidget {
  var Fdata;
  clintfunction(this.Fdata);
  @override
  State<clintfunction> createState() => _clintfunctionState();
}
class _clintfunctionState extends State<clintfunction> {
  HttpHandler httpHandler = HttpHandler();
   Future<List<Data>>dataList;
  @override

  void initState(){
    print('enta fe iniy state');
    super.initState();
    dataList=widget.Fdata;
    print(widget.Fdata);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 200,
        backgroundColor: Colors.green[200],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(300.5),
              // bottomRight: Radius.circular(25.5),
            )
        ),
        title: Image.asset('asset/sss.png',color: Colors.black,),

      ),
      body: FutureBuilder<List<Data>>(
        future: dataList,
        builder: (context,snapshot){
          if(snapshot.hasData){
            // print(snapshot.data[0].name);
            List<Data> llist=snapshot.data.toList();
            print('++++++++++++');
            print(llist[0].category);
            return ListView.separated(
              itemCount: llist.length,
              separatorBuilder: (context,index){
                return Divider();
              },
                itemBuilder: (context,index){
                 return buildCard(llist[index]);
                },
            );
          }
          else if(snapshot.hasError){
            return Center(child: Text('Something went wrong'),);
          }
          else{
            return Center(child: CircularProgressIndicator(color: Colors.black,),);
          }
        }
      ),
    );
  }
buildCard(Data DData){
    print(DData.name);
    print(DData.category);
    return Card(
      elevation: 7,
      margin: const EdgeInsets.only(left: 16,right: 16),
      child: Container(
        height: 365,
        padding: const EdgeInsets.all(8),
        alignment: Alignment.center,
        child: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Text('Injury: ${DData.category}'),
              )
              ,Container(
                margin: EdgeInsets.only(top: 10,bottom: 10),
                child: Text('Your task: ${DData.name}'),
              )
              ,Container(
                margin: EdgeInsets.only(bottom: 10,left: 15,right: 15),
                child: Text('The right way to perform this exercise is : ${DData.desc}'),
              )
              ,Container(
                child: Text('Focus on this picture'),
              )
              ,Container(
                margin: EdgeInsets.only(top: 10),
                child: Icon(Icons.download_outlined,size: 30,color: Colors.green,),
              )
              ,Container(
                width: 150,
                height: 150,
                child: Image.network(DData.image),
              )
            ],
          ),
        ),
      ),
    );
}
}

