import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  ///   CustomTextField.
  ///  - ```label```
  ///  - ```initialValue```
  ///  - ```maxLines```
  ///  - ```onSubmitted()```
  ///  - ```onChanged()```
  ///  - ```TextInputType```
  ///  - ```backgroundColor```
  ///  - ```borderColor```
  const CustomTextField({
    Key? key,
    this.label,
    this.initialValue,
    this.maxLines,
    this.textInputType,
    this.onSubmitted,
    this.onChanged,
    required this.backgroundColor,
    required this.borderColor,
  }) : super(key: key);

  final String? label;
  final String? initialValue;
  final int? maxLines;
  final TextInputType? textInputType;
  final void Function(String)? onSubmitted;
  final void Function(String)? onChanged;
  final Color backgroundColor;
  final Color borderColor;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    _controller.text = widget.initialValue ?? '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: _controller,
        focusNode: _focusNode,
        onSubmitted: widget.onSubmitted,
        onChanged: widget.onChanged,
        textCapitalization: TextCapitalization.sentences,
        maxLines: widget.maxLines ?? 1,
        keyboardType: widget.textInputType,
        style: Theme.of(context).textTheme.subtitle2,
        decoration: InputDecoration(
          filled: true,
          fillColor: widget.backgroundColor,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
          labelText: widget.label,
          labelStyle: const TextStyle(fontSize: 15, color: Colors.white),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: widget.borderColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: widget.borderColor),
          ),
        ),
      ),
    );
  }
}
