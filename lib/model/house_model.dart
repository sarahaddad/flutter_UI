class House{
  String name;
  String adress;
  String imageUrl;
  String coast;
  String Size;


   House(this.name,this.adress,this.imageUrl,this.coast,this.Size);

   static List<House> generateRecommended (){
     return[
      House('The moon House', 'istanbul , SultanEyub', 'assets/images/house01.jpeg',r'5000 $','5000Sqr'),
       House('The moon House', 'istanbul , SultanEyub', 'assets/images/house02.jpeg',r'6000 $','5000Sqr'),

     ];
   }
  static List<House> generateBestOffer (){
    return[
      House('The moon House', 'istanbul , SultanEyub', 'assets/images/offer01.jpeg',r'5000$','5000Sqr'),
      House('The moon House', 'istanbul , SultanEyub', 'assets/images/offer02.jpeg',r'5000$','5000Sqr'),

    ];
  }
}