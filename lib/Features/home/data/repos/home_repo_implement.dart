import 'package:book_app/Features/home/data/models/book_model/book_model.dart';
import 'package:book_app/Features/home/data/repos/home_repo.dart';
import 'package:book_app/core/errors/failre.dart';
import 'package:book_app/core/utilits/api_services.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplementation implements HomeRepo {
  final ApiService apiService;

  HomeRepoImplementation(this.apiService);
  @override
  Future<Either<Failre, List<BookModel>>> fetechNewestBooks() async{
   try{
     var data= await apiService.get(
      endpoint:
          'volumes?Filtering=free-ebooks&Sorting=newest &q=subject:computer science',
    );
    List<BookModel> bookslist=[];
    for (var item in data['items']) {
      bookslist.add(BookModel.fromJson(item));
    }
    return right(bookslist);
   }catch(e){
    if(e is DioException){
      return left(ServerFailre.fromDioError(e));
    }
    return left(ServerFailre(e.toString()));
   }
   
  }

  @override
  Future<Either<Failre, List<BookModel>>> fetechFeaturedBooks() {
    // TODO: implement fetechFeaturedBooks
    throw UnimplementedError();
  }
}
