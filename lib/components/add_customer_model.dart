import '/flutter_flow/flutter_flow_util.dart';
import 'add_customer_widget.dart' show AddCustomerWidget;
import 'package:flutter/material.dart';

class AddCustomerModel extends FlutterFlowModel<AddCustomerWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for City widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityTextController;
  String? Function(BuildContext, String?)? cityTextControllerValidator;
  // State field(s) for Address widget.
  FocusNode? addressFocusNode;
  TextEditingController? addressTextController;
  String? Function(BuildContext, String?)? addressTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    cityFocusNode?.dispose();
    cityTextController?.dispose();

    addressFocusNode?.dispose();
    addressTextController?.dispose();
  }
}
