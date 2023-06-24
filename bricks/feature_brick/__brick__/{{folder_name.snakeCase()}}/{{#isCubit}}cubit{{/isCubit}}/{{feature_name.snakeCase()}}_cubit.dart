import 'package:{{{pathPackage}}}/all_file/all_file.dart';

part '{{feature_name.snakeCase()}}_state.dart';

class {{feature_name.pascalCase()}}Cubit
    extends RequestItemCubit<dynamic, {{feature_name.pascalCase()}}State> {
  {{feature_name.pascalCase()}}Cubit({dynamic? item})
    : super({{feature_name.pascalCase()}}State(item: item));

  @override
  Future<dynamic?> fetchApi() {
    return null;
  }
}
