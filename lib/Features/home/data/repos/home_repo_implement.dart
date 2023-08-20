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
  Future<Either<Failre, List<BookModel>>> fetechNewestBooks() async {
    try {
      var data = await apiService.get(
        endpoint:
            'volumes?Filtering=free-ebooks&q=programming',
      );

      List<BookModel> bookslist = [];
      for (var item in data['items']) {
          bookslist.add(BookModel.fromJson(item));
        }
      return right(bookslist);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailre.fromDioError(e));
      }
      return left(ServerFailre('oOps,please try again'));
    }
  }

  @override
  Future<Either<Failre, List<BookModel>>> fetechFeaturedBooks() async{
    try {
      var data = await apiService.get(
        endpoint:
            'volumes?Filtering=free-ebooks&q=physics',
      );

      List<BookModel> bookslist = [];
      for (var item in data['items']) {
        bookslist.add(BookModel.fromJson(item));
      }
      return right(bookslist);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailre.fromDioError(e));
      }
      return left(ServerFailre('oOps,please try again'));
    }
  }
  
  @override
  Future<Either<Failre, List<BookModel>>> fetechSimilerBooks({required String category}) async{
    try{
      var data=await apiService.get(endpoint: 'volumes?Filtering=free-ebooks&Sorting=relevance&q=$category');
      List<BookModel> bookslist=[];
      for (var item in data['items']) {
        bookslist.add(BookModel.fromJson(item));
      }
      return right(bookslist);
    }catch(e){
      if(e is DioException){
        return left(ServerFailre.fromDioError(e));
      }
      return left(ServerFailre('oOps,pleasse try again'));
    }
  }
}
