import 'package:book_app/Features/home/data/models/book_model/book_model.dart';
import 'package:book_app/core/errors/failre.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
  Future<Either<Failre,List<BookModel>>> fetechNewestBooks();
  Future<Either<Failre,List<BookModel>>> fetechFeaturedBooks();
}