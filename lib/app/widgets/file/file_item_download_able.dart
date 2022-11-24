// import 'dart:isolate';
// import 'dart:ui';
//
// import 'package:ez_store/all_file/all_file.dart';
// import 'package:ez_store/core/utils/file_utils.dart';
// import 'package:ez_store/app/widgets/file/file_item.dart';
// import 'package:ez_store/services/file_downloader_service.dart';
// import 'package:flutter_downloader/flutter_downloader.dart';
//
// class FileItemDownloadAble extends StatefulWidget {
//   const FileItemDownloadAble(
//       {Key? key, required this.url, required this.alignLeft, this.platform})
//       : super(key: key);
//
//   final String url;
//   final bool alignLeft;
//   final TargetPlatform? platform;
//
//   @override
//   State<FileItemDownloadAble> createState() => _FileItemDownloadAbleState();
// }
//
// class _FileItemDownloadAbleState extends State<FileItemDownloadAble> {
//
//   final Rx<TaskInfo?> taskLD  = Rx<TaskInfo?>(null);
//
//   TaskInfo? get task => taskLD.value;
//
//   set task(value) => taskLD.value = value;
//
//   @override
//   void initState() {
//     super.initState();
//     task = TaskInfo(link: widget.url);
//     // FlutterDownloader.registerCallback(downloadCallback);
//
//     FileDownloader.instance.prepare();
//
//     FileDownloader.instance.taskUpdateStream.stream.listen((taskUpdate) {
//       if (taskUpdate?.taskId == task?.taskId){
//         task = taskUpdate?.copyWith(
//           link: widget.url
//         );
//       }
//     });
//   }
//
//   @override
//   void dispose() {
//     // _unbindBackgroundIsolate();
//     FileDownloader.instance.cancel(taskId: task?.taskId);
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Obx(() => GestureDetector(
//       onTap: () {
//         onActionClick();
//       },
//       child: Container(
//         color: context.themeColor.grayBackground,
//         child: FileDemo(
//           extension: FileUtils.getExtensionFormPath(widget.url),
//           name: FileUtils.getNameFormPath(widget.url),
//           fileSize: null,
//           // alignLeft: widget.alignLeft,
//           indicator: SizedBox.square(
//             dimension: 30,
//             child: FittedBox(
//               child: Stack(
//                 alignment: Alignment.center,
//                 children: [
//                   Builder(builder: (context) {
//                     var progress = taskLD.value?.progress;
//                     if (progress == 100) return Gaps.empty;
//                     return CircularProgressIndicator(
//                       value: (progress ?? 100) / 100,
//                     );
//                   }),
//                   _buildActionForTask(task?.status)
//                 ],
//               ),
//             ),
//           ),
//         ).p8(),
//       ).cornerRadius(Dimens.rad),
//     ));
//   }
//
//   Future<void> onActionClick() async {
//     logger.i('task?.status ${task?.status} task?.taskId ${task?.taskId}');
//
//     if (task?.status == DownloadTaskStatus.undefined) {
//       _requestDownload();
//     } else if (task?.status == DownloadTaskStatus.running) {
//       FileDownloader.instance.pause(taskId: task?.taskId);
//     } else if (task?.status == DownloadTaskStatus.paused) {
//       FileDownloader.instance.resume(taskId: task?.taskId);
//     } else if (task?.status == DownloadTaskStatus.complete) {
//       var openDownloadedFile = await FileDownloader.instance.openDownloadedFile(task?.taskId);
//
//       logger.i('openDownloadedFile $openDownloadedFile');
//
//     } else if (task?.status == DownloadTaskStatus.failed) {
//       FileDownloader.instance.retry(taskId: task?.taskId);
//     }
//   }
//
//   void _requestDownload() async {
//     final id = await FileDownloader.instance.downloadFile(task?.link);
//     task = task?.copyWith(
//       taskId: id
//     );
//
//     logger.i('_requestDownload ${task?.taskId}');
//   }
//
//   Widget _buildActionForTask(DownloadTaskStatus? status) {
//     if (status == DownloadTaskStatus.undefined ||
//         status == DownloadTaskStatus.canceled) {
//       return Btn(
//         btnType: BtnType.TEXT,
//         padding: Dimens.edge_zero,
//         child: Icon(
//           Icons.file_download,
//           color: context.themeText.text.color,
//         ),
//         onPressed: () {
//           onActionClick();
//         },
//       );
//     } else if (status == DownloadTaskStatus.running ||
//         status == DownloadTaskStatus.enqueued) {
//       return RawMaterialButton(
//         onPressed: () {
//           onActionClick();
//         },
//         shape: const CircleBorder(),
//         constraints: const BoxConstraints(minHeight: 32.0, minWidth: 32.0),
//         child: Icon(
//           Icons.pause,
//           color: context.themeText.text.color,
//         ),
//       );
//     } else if (status == DownloadTaskStatus.paused) {
//       return RawMaterialButton(
//         onPressed: () {
//           onActionClick();
//         },
//         shape: const CircleBorder(),
//         constraints: const BoxConstraints(minHeight: 32.0, minWidth: 32.0),
//         child: const Icon(
//           Icons.play_arrow,
//           color: Colors.green,
//         ),
//       );
//     } else if (status == DownloadTaskStatus.complete) {
//       return Gaps.empty;
//     } else if (status == DownloadTaskStatus.failed) {
//       return RawMaterialButton(
//         onPressed: () {
//           onActionClick();
//         },
//         shape: const CircleBorder(),
//         constraints: const BoxConstraints(minHeight: 32.0, minWidth: 32.0),
//         child: Icon(
//           Icons.refresh,
//           color: context.themeColor.warningColor,
//         ),
//       );
//     } else {
//       return Gaps.empty;
//     }
//   }
// }
