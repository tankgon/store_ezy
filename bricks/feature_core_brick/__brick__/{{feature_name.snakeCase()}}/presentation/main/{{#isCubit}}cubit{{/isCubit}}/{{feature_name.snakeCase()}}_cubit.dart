import 'package:{{{pathPackage}}}/all_file/all_file.dart';
import '../../../self.dart';

part '{{feature_name.snakeCase()}}_state.dart';

class {{feature_name.pascalCase()}}Cubit extends RequestCubit<{{feature_name.pascalCase()}}State> {
{{feature_name.pascalCase()}}Cubit({{{feature_name.pascalCase()}}Repo? repo, dynamic? item,}) : super({{feature_name.pascalCase()}}State(item: item)){
_repo = repo ?? getIt<{{feature_name.pascalCase()}}Repo>();
}

late {{feature_name.pascalCase()}}Repo _repo;

FutureOr<void> fetchItem() async {
emit(state.copyWith(status: ItemDefaultStatus.loading));
try {
// final item = await Get.find<ApproveRepo>().getProgramForApprove(programID: item.programID ?? '');
emit(
state.copyWith(
status: ItemDefaultStatus.success,
// item: item,
)
);
} catch (e) {
log(e.toString(), error: e);
emit(
state.copyWith(
status: ItemDefaultStatus.error,
error: e,
),
);
}
}
}
