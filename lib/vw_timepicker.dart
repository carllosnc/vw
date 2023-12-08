import 'package:flutter/material.dart';

class VWTimePicker extends StatefulWidget {
  // TEXT FIELD

  /// The [OnChanged] callback, Called when the user changes the time
  final Function(TimeOfDay) onChanged;

  /// The [validator] will be called when the user submits the form.
  final String? Function(String?)? validator;

  /// The [decoration] to show around the text field.
  final InputDecoration? decoration;

  // TIME PICKER

  /// The [orientation] of the time picker.
  final Orientation orientation;

  /// The [helpText] to show in the time picker.
  final String helpText;

  /// The [anchorPoint] to show in the time picker.
  final Offset? anchorPoint;

  /// The [cancelText] to show in the time picker.
  final String cancelText;

  /// The [confirmText] to show in the time picker.
  final String confirmText;

  /// The [errorInvalidText] to show in the time picker.
  final String errorInvalidText;

  /// The [hourLabelText] to show in the time picker.
  final String hourLabelText;

  /// The [minuteLabelText] to show in the time picker.
  final String minuteLabelText;

  /// The [builder] to show in the time picker.
  final Widget Function(BuildContext, Widget?)? builder;

  const VWTimePicker({
    super.key,
    required this.onChanged,
    this.decoration,
    this.validator,
    this.orientation = Orientation.portrait,
    this.helpText = "Select time",
    this.anchorPoint,
    this.cancelText = "Cancel",
    this.confirmText = "Ok",
    this.errorInvalidText = "Invalid time format",
    this.hourLabelText = "Hour",
    this.minuteLabelText = "Minute",
    this.builder,
  });

  @override
  State<VWTimePicker> createState() => _VWTimePickerState();
}

class _VWTimePickerState extends State<VWTimePicker> {
  final inputController = TextEditingController();
  TimeOfDay initialTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: const Key('vw_timepicker_input'),
      controller: inputController,
      readOnly: true,
      validator: widget.validator,
      decoration: widget.decoration,
      onTap: () {
        showTimePicker(
          context: context,
          initialTime: initialTime,
          orientation: widget.orientation,
          helpText: widget.helpText,
          anchorPoint: widget.anchorPoint,
          cancelText: widget.cancelText,
          confirmText: widget.confirmText,
          errorInvalidText: widget.errorInvalidText,
          hourLabelText: widget.hourLabelText,
          minuteLabelText: widget.minuteLabelText,
          initialEntryMode: TimePickerEntryMode.input,
          builder: widget.builder,
        ).then((TimeOfDay? value) {
          if (value != null) {
            final String hour = value.hour.toString().padLeft(2, '0');
            final String minute = value.minute.toString().padLeft(2, '0');
            final String time = '$hour:$minute';

            setState(() {
              initialTime = value;
            });

            inputController.text = time;

            widget.onChanged(value);
          }
        });
      },
      keyboardType: TextInputType.datetime,
    );
  }
}
