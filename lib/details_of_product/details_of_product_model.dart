import '/flutter_flow/flutter_flow_util.dart';
import 'details_of_product_widget.dart' show DetailsOfProductWidget;
import 'package:flutter/material.dart';

class DetailsOfProductModel extends FlutterFlowModel<DetailsOfProductWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
