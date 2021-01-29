class UsersInscription{
  String usersId;
  String usersName ;
  String usersEmail;
  String usersPhoneNumber;
  String usersPassword;
  UsersInscription( {this.usersId , this.usersName, this.usersEmail , this.usersPhoneNumber , this.usersPassword});
  Map<String,dynamic>toMap(){
    return{
      'userId':usersId,
      'userName':usersName,
      'userEmail':usersEmail,
      'userPhoneNumber': usersPhoneNumber,
      'userPassword':usersPassword
    };
  }

}