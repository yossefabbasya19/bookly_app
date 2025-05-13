import 'package:bookly_app/core/failure/failure.dart';
import 'package:bookly_app/feature/home/data/model/Book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeReps {
   Future<Either<Failure, List<BookModel>>> fetchFeatureBook();

  Future<Either<Failure, List<BookModel>>> fetchNewestBook();
}
