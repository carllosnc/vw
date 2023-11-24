import 'package:flutter/material.dart';
import './vw_row.dart';

class VWButton extends StatefulWidget {
  ///[fullWidth] is a boolean value that determines whether the button
  ///should take up the full width of the parent widget.
  final bool fullWidth;

  ///[label] is the text that is displayed on the button.
  final String label;

  ///[color] is the background color of the button.
  final Color? color;

  ///[gradient] is the gradient of the button.
  final Gradient? gradient;

  ///[splashColor] is the splash color of the button.
  final Color splashColor;

  ///[labelStyle] is the style of the label text.
  final TextStyle? labelStyle;

  ///[leftIcon] is the icon that is displayed on the left side of the label.
  final IconData? leftIcon;

  ///[leftIconSize] is the size of the left icon.
  final double? leftIconSize;

  ///[rightIcon] is the icon that is displayed on the right side of the label.
  final IconData? rightIcon;

  ///[rightIconSize] is the size of the right icon.
  final double? rightIconSize;

  ///[isLoading] is a boolean value that determines whether
  ///the button should display a loading indicator.
  final bool? isLoading;

  ///[loadingLabel] is the text that is displayed when the button is loading.
  final String? loadingLabel;

  ///[borderRadius] is the border radius of the button.
  final BorderRadius borderRadius;

  ///[border] is the border of the button.
  final Border? border;

  ///[onTap] is the function that is called when the button is tapped.
  final void Function()? onTap;

  ///[onDoubleTap] is the function that is called when the button is double tapped.
  final void Function()? onDoubleTap;

  ///[onLongPress] is the function that is called when the button is long pressed.
  final void Function()? onLongPress;

  const VWButton({
    super.key,
    this.fullWidth = false,
    this.label = 'Button',
    this.color,
    this.gradient,
    this.splashColor = Colors.white,
    this.labelStyle,
    this.leftIcon,
    this.leftIconSize,
    this.rightIcon,
    this.rightIconSize,
    this.loadingLabel,
    this.isLoading = false,
    this.borderRadius = const BorderRadius.all(Radius.circular(100)),
    this.border,
    this.onTap,
    this.onDoubleTap,
    this.onLongPress,
  });

  @override
  State<VWButton> createState() => _VWButtonState();
}

class _VWButtonState extends State<VWButton> {
  @override
  Widget build(BuildContext context) {
    Color buttonColor = widget.color ?? Theme.of(context).colorScheme.primary;

    var defaultLabelStyle = TextStyle(
      color: buttonColor.computeLuminance() > 0.5 ? Colors.black : Colors.white,
      fontSize: 12,
      fontWeight: FontWeight.bold,
    );

    var labelStyle = defaultLabelStyle.merge(widget.labelStyle);

    //conditions
    var leftIconCondition = widget.isLoading == false && widget.leftIcon != null;
    var rightIconCondition = widget.isLoading == false && widget.rightIcon != null;
    var loadingLabelCondition = widget.isLoading == true && widget.loadingLabel != null;

    //values
    var splashColor = widget.isLoading == true ? Colors.transparent : widget.splashColor.withOpacity(0.1);
    var iconColor = buttonColor.computeLuminance() > 0.5 ? Colors.black : Colors.white;
    var label = loadingLabelCondition ? widget.loadingLabel!.toUpperCase() : widget.label.toUpperCase();

    //circular indicator color
    var circularIndicatorColor = buttonColor.computeLuminance() > 0.5 ? Colors.black : Colors.white;

    return Expanded(
      key: const Key("vw_button_expanded"),
      flex: widget.fullWidth ? 1 : 0,
      child: Container(
        key: const Key("vw_button_container"),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: widget.borderRadius,
          gradient: widget.gradient,
          border: widget.border,
        ),
        child: Material(
          key: const Key("vw_button_material"),
          type: MaterialType.button,
          color: Colors.transparent,
          child: InkWell(
            key: const Key("vw_button_inkwell"),
            onTap: widget.onTap,
            onDoubleTap: widget.onDoubleTap,
            onLongPress: widget.onLongPress,
            splashColor: splashColor,
            child: Container(
              key: const Key("vw_button_sub-container"),
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 10,
              ),
              child: VWRow(
                horizontalAlignment: MainAxisAlignment.center,
                verticalAlignment: CrossAxisAlignment.center,
                gap: 10,
                children: [
                  if (widget.isLoading == true)
                    Container(
                      key: const Key("vw_button_loading_indicator"),
                      width: 14,
                      height: 14,
                      margin: const EdgeInsets.symmetric(vertical: 1.5),
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        valueColor: AlwaysStoppedAnimation<Color>(circularIndicatorColor),
                      ),
                    ),
                  if (leftIconCondition)
                    Icon(
                      key: const Key("vw_button_left_icon"),
                      widget.leftIcon,
                      color: iconColor,
                      size: widget.leftIconSize ?? 14,
                    ),
                  if (label.isNotEmpty)
                    Text(
                      label,
                      key: const Key("vw_button_label"),
                      textAlign: TextAlign.center,
                      textWidthBasis: TextWidthBasis.longestLine,
                      style: labelStyle,
                    ),
                  if (rightIconCondition)
                    Icon(
                      key: const Key("vw_button_right_icon"),
                      widget.rightIcon,
                      color: iconColor,
                      size: widget.rightIconSize ?? 14,
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
