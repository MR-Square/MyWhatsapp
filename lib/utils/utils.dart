import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Utils {
  static final width = Get.width;
  static final height = Get.height;

  /// Returns [dobule]. default value is [5].
  /// You can also pass [percentage] you want. It accepts values in between
  /// [1-100].
  static double widthPer([double? wt = 5]) => (Get.width * wt! / 100);

  /// Returns [dobule]. default value is [2].
  /// You can also pass [percentage] you want. It accepts values in between
  /// [1-100].
  static double heightPer([double? ht = 5]) => (Get.height * ht! / 100);

  /// Retrun [sizedbox] with width of [5%] of device width.
  ///
  /// You can also pass [precentage] you want.
  static Widget horizontalSpace([double? wt = 5]) =>
      SizedBox(width: widthPer(wt));

  /// Retrun [sizedbox] with height of [2%] of device height.
  ///
  /// You can also pass [precentage] you want.
  static Widget verticalSpace([double? ht = 2]) =>
      SizedBox(height: heightPer(ht));

  /// Return [snackbar]. You need to pass two agruments [title] and [message].
  ///
  /// If message you want to show is for [warning] or [error], then you can
  /// pass [isWarning] as [true].
  static snackbarMessage(
    String title,
    String message, {
    bool? isWarning = false,
  }) {
    Get.closeAllSnackbars();
    Get.snackbar(
      title,
      message,
      backgroundColor: isWarning! ? Colors.red : Colors.green,
      colorText: Colors.white,
    );
  }

  /// This method is used to change the focus from one field to another field.
  /// It accepts two arguments : [context], and [next].
  ///
  /// context: BuildContext.
  ///
  /// next: focusnode of next field where you want to focus.
  static changeFocus(BuildContext context, FocusNode next) =>
      FocusScope.of(context).requestFocus(next);

  /// This method is used to [unfocus] a field.
  ///
  /// You need to pass the [focusnode] name of field you want to unfocus.
  static unFocusField(FocusNode node) {
    node.unfocus();
  }

  static showDialogBox(
    BuildContext context,
    String title,
    Widget contents, {
    VoidCallback? onCancel,
    VoidCallback? onConfirm,
    bool? dismissible = false,
    double? height,
    double? borderRadius = 4,
    String? confirmLabel = 'save',
    String? cancelLabel = 'cancel',
    Color? confirmColor = Colors.green,
    Color? cancelColor = Colors.red,
  }) {
    showDialog(
      context: context,
      barrierDismissible: dismissible!,
      builder: (context) {
        return AlertDialog(
          title: Center(child: Text(title)),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius!)),
          content: contents,
          actions: [
            if (onCancel != null)
              TextButton(
                onPressed: onCancel,
                child: Text(
                  cancelLabel!,
                  style: TextStyle(
                    color: cancelColor,
                    fontSize: 18,
                  ),
                ),
              ),
            TextButton(
              onPressed: onConfirm,
              child: Text(
                confirmLabel!,
                style: TextStyle(
                  color: confirmColor,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
