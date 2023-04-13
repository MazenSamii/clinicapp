// class LoginModel {
//    bool status ;
//    String message;
//    UserData data;
//   LoginModel.fromjson(Map<String,dynamic>json){
//     status=json['status'];
//     message=json['message'];
//     if ((json['data']==null)) {
//       data = null;
//     } else {
//       data = UserData.fromjson(json['data']);
//     }
//   }
// }
// class UserData{
//    int id;
//    String name;
//    String email;
//    String phone;
//    String image;
//    int points;
//   int credit;
//   String token;
//   UserData.fromjson(Map<String,dynamic>json){
//     id=json['id'];
//     name=json['name'];
//     email=json['email'];
//     phone=json['phone'];
//     points=json['points'];
//     credit=json['credit'];
//     token=json['token'];
//   }
// }
class Data{
String name;
String category;
String desc;
String image;

Data({
  this.name, this.category, this.desc, this.image,
});

 Data.fromJson(Map<String, dynamic> map) {
    // return Data(
    //   name: map["name"],
    //   category: map["category"],
    //   desc: map["desc"],
    //   image: map["image"],
    // );
   print('///////////////////////////////////////////////////////////////');
   print(map);
   name=map["name"];
   category= map["category"];
      desc= map["desc"];
      image= map["image"];
  }
//

}