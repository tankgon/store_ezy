import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<String?> {
  SearchCubit() : super(null);
  
  void search(String? value) {
    emit(value);
  }
}
