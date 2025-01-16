import 'package:blind_chicken/core_config/utils/logging.dart';

import 'package:flutter/material.dart';

class PaginationScrollController {
  late ScrollController scrollController;
  bool isLoading = false;
  bool stopLoading = false;
  int currentPage = 1;
  double boundaryOffset = 0.5;
  double paginationPosition = 0.0;
  late Function loadAction;

  void init({Function? initAction, required Function loadAction}) {
    if (initAction != null) {
      initAction();
    }
    this.loadAction = loadAction;
    scrollController = ScrollController()..addListener(scrollListener);
  }

  void dispose() {
    scrollController.removeListener(scrollListener);
    scrollController.dispose();
  }

  void scrollListener() {
    bool isActive = (scrollController.position.maxScrollExtent - 2500).toInt() >
            paginationPosition.toInt() &&
        (scrollController.position.maxScrollExtent - 2500).toInt() != paginationPosition.toInt();
    //load more data
    if ((scrollController.offset > scrollController.position.maxScrollExtent * boundaryOffset) &&
        isActive) {
      paginationPosition = scrollController.position.maxScrollExtent - 2500;
      loadAction();
      currentPage++;
      logging(currentPage.toString(), stackTrace: StackTrace.current);
      boundaryOffset = 1 - 1 / (currentPage * 2);
    }
  }
}
