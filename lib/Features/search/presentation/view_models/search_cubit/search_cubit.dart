
import 'package:bloc/bloc.dart';
import 'package:book_app/Features/home/data/models/book_model/book_model.dart';
import 'package:book_app/Features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());

  final SearchRepo searchRepo;

  Future<void> getSearched({required String word})async{
    emit(SearchLoading());
    var data =await searchRepo.fetechSearchedBooks(word);
    data.fold((failure){
      emit(SearchFailure(failure.errorMessage));
    }, (books){
      emit(SearchSuccess(books));
    });
  }
}
