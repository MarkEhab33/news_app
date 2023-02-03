

class Category{
  String id;
  String title;
  String imageUrl;
  int color;
  


  Category({required this.id,required this.title,required this.imageUrl,required this.color});
 
  static List<Category> getCategories(){
    return [
      Category(id: 'sports', title: 'Sports', imageUrl: 'assets/images/sports.png', color: 0xffC91C22),
      Category(id: 'business', title: 'Business', imageUrl: 'assets/images/business.png', color: 0xffCF7E48),
      Category(id: 'entertainment', title: 'Entertainment', imageUrl: 'assets/images/entertainment.png', color: 0xff4882CF),
      Category(id: 'health', title: 'Health', imageUrl: 'assets/images/health.png', color: 0xffED1E79),
      Category(id: 'science', title: 'Science', imageUrl: 'assets/images/science.png', color: 0xffF2D352),
      Category(id: 'technology', title: 'Technology', imageUrl: 'assets/images/science.png', color: 0xff003E90),
      Category(id: 'general', title: 'General', imageUrl: 'assets/images/entertainment.png', color: 0xffA6B313),
    ];
    
  }
}