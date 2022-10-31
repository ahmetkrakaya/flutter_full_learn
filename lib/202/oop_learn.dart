import 'dart:io';

import 'package:flutter_full_learn/202/custom_exception.dart';
import 'package:url_launcher/url_launcher.dart';

abstract class IFileDownload{
  bool? downloadFile(FileItem? fileItem);

  void toShare(String path) async{
    await launch(path);
  }
}

class FileDownload implements IFileDownload{
  @override
  bool? downloadFile(FileItem? fileItem) {
    if(fileItem == null) throw FileDownloadException();

    print('a');
    return true;
  }

  @override
  void toShare(String path) {

  }
}

class FileItem {
  final String name;
  final File file;

  FileItem(this.name, this.file);
}


mixin ShareMixin on IFileDownload{
  void share();
}

