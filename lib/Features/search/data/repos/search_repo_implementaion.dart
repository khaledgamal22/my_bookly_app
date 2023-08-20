import 'package:book_app/Features/home/data/models/book_model/book_model.dart';
import 'package:book_app/Features/search/data/repos/search_repo.dart';
import 'package:book_app/core/errors/failre.dart';
import 'package:book_app/core/utilits/api_services.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImplementation implements SearchRepo {

  final ApiService apiService;

  SearchRepoImplementation(this.apiService);
  @override
  Future<Either<Failre, List<BookModel>>> fetechSearchedBooks(
      String word) async {
    try {
      var data = await apiService.get(
        endpoint:
            'volumes?Filtering=free-ebooks&q=$word',
      );
      List<BookModel> books=[];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if(e is DioException){
        return left(ServerFailre.fromDioError(e));
      }
      return left(ServerFailre('oOps,please try again'));
    }
  }
}
