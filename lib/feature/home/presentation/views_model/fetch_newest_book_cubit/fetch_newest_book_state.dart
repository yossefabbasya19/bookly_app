import 'package:bookly_app/feature/home/data/model/Book_model.dart';

sealed class FetchNewestBookState {}

final class FetchNewestBookInitial extends FetchNewestBookState {}
final class FetchNewestBookLoading extends FetchNewestBookState {}
final class FetchNewestBookSuccess extends FetchNewestBookState {
  final List<BookModel> books;

  FetchNewestBookSuccess(this.books);
}
final class FetchNewestBookFailure extends FetchNewestBookState {
  final String errMassage;

  FetchNewestBookFailure(this.errMassage);
}
