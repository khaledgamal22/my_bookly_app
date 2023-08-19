import 'package:book_app/Features/home/data/models/book_model/book_model.dart';
import 'package:book_app/Features/home/presentation/view_models/similer_cubit/similer_cubit.dart';
import 'package:book_app/Features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({
    super.key,
    required this.book,
  });

  final BookModel book;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SimilerCubit>(context).getsimiler(
      category: widget.book.volumeInfo.categories?[0]??'physics',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailsViewBody(bookModel: widget.book,),
    );
  }
}
