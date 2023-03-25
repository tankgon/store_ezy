import 'package:{{{pathPackage}}}/all_file/all_file.dart';

const {{feature_name.camelCase()}}Routes = [
    AutoRoute(
      path: '{{feature_name.pascalCase()}}',
      page: {{feature_name.pascalCase()}}Page,
    )
];