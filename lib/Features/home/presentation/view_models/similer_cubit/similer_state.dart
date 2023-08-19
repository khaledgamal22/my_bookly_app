part of 'similer_cubit.dart';

sealed class SimilerState extends Equatable {
  const SimilerState();

  @override
  List<Object> get props => [];
}

final class SimilerInitial extends SimilerState {}

final class SimilerLoading extends SimilerState {}

final class SimilerSuccess extends SimilerState {
  final List<BookModel> books;

  const SimilerSuccess(this.books);
}

final class SimilerFailure extends SimilerState {
  final String errorMessage;

  const SimilerFailure(this.errorMessage);
}
