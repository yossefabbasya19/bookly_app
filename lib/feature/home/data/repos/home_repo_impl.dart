import 'package:bookly_app/core/api_service/api_service.dart';
import 'package:bookly_app/core/failure/failure.dart';
import 'package:bookly_app/feature/home/data/model/Book_model.dart';
import 'package:bookly_app/feature/home/data/repos/home_reps.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeReps {
  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBook() async {
    try {
      Map<String, dynamic> data = await ApiService().get(
        "https://www.googleapis.com/books/v1/volumes?q=programing",
      );
      List<BookModel> books = [];
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBook() async {
    try {
      Map<String, dynamic> data = await ApiService().get(
        "https://www.googleapis.com/books/v1/volumes?q=programing",
      );
      List<BookModel> books = [];
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}
