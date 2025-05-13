import 'package:bookly_app/feature/home/data/repos/home_reps.dart';
import 'package:bookly_app/feature/home/presentation/views_model/fetch_newest_book_cubit/fetch_newest_book_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FetchNewestBookCubit extends Cubit<FetchNewestBookState> {
  FetchNewestBookCubit(this.homeReps) : super(FetchNewestBookInitial());
  final HomeReps homeReps;
  fetchNewestBook() async{
    emit(FetchNewestBookLoading());
    var result = await homeReps.fetchNewestBook();
    result.fold((failure) {
      emit(FetchNewestBookFailure(failure.errMassage));
    }, (books) {
      emit(FetchNewestBookSuccess(books));
    },);

  }
}
