import 'package:flutter/material.dart';

class VWSelectOption {
  ///[value] The value of the option.
  final dynamic value;

  ///[listTile] The ListTile widget to display in the modal.
  final ListTile listTile;

  ///[displayText] The text to display in the text field when the option is selected.
  final String displayText;

  const VWSelectOption({
    required this.value,
    required this.listTile,
    required this.displayText,
  });
}

class VWSelect extends StatelessWidget {
  ///[inputDecoration] The decoration of the text field.
  final InputDecoration? inputDecoration;

  ///[options] A list of VWSelectOption objects to display in the modal.
  final List<VWSelectOption> options;

  ///[onSelected] A function that is called when an option is selected.
  final Function(dynamic value) onSelected;

  ///[title] The title of the modal. Default is "Select".
  final String title;

  ///[titleTextStyle] The style of the title.
  final TextStyle? titleTextStyle;

  ///[borderRadius] is the border radius of top left and top right of the page.
  final double borderRadius;

  ///[headerBoxDecoration] The decoration of the header.
  final BoxDecoration? headerBoxDecoration;

  ///[validator] A function that validates the input. Default is null.
  final String? Function(String? value)? validator;

  const VWSelect({
    super.key,
    this.inputDecoration,
    required this.options,
    required this.onSelected,
    this.title = "Select",
    this.titleTextStyle,
    this.headerBoxDecoration,
    this.validator,
    this.borderRadius = 15,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

    const defaultInputDecoration = InputDecoration(
      suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
    );

    return TextFormField(
      key: const Key("vw_select_textfield"),
      controller: controller,
      decoration: inputDecoration ?? defaultInputDecoration,
      readOnly: true,
      validator: validator,
      onTap: () {
        showModalBottomSheet(
          context: context,
          backgroundColor: Colors.transparent,
          builder: (context) {
            return Container(
              height: 1000,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(borderRadius),
                  topRight: Radius.circular(borderRadius),
                ),
              ),
              key: const Key("vw_select_modal"),
              child: Scaffold(
                key: const Key("vw_select_scaffold"),
                appBar: AppBar(
                  key: const Key("vw_select_appbar"),
                  leading: IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  title: Text(
                    title,
                    style: titleTextStyle,
                  ),
                ),
                body: ListView.builder(
                  itemCount: options.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      key: Key("vw_select_modal_option_$index"),
                      onTap: () {
                        controller.text = options[index].displayText;
                        FocusManager.instance.primaryFocus?.unfocus();
                        onSelected(options[index].value);
                        Navigator.pop(context);
                      },
                      title: options[index].listTile.title,
                      subtitle: options[index].listTile.subtitle,
                      leading: options[index].listTile.leading,
                      textColor: options[index].listTile.textColor,
                      tileColor: options[index].listTile.tileColor,
                      selectedTileColor: options[index].listTile.selectedTileColor,
                      focusColor: options[index].listTile.focusColor,
                      hoverColor: options[index].listTile.hoverColor,
                      autofocus: options[index].listTile.autofocus,
                      selected: options[index].listTile.selected,
                      enabled: options[index].listTile.enabled,
                      titleTextStyle: options[index].listTile.titleTextStyle,
                      iconColor: options[index].listTile.iconColor,
                      subtitleTextStyle: options[index].listTile.subtitleTextStyle,
                      contentPadding: options[index].listTile.contentPadding,
                      horizontalTitleGap: options[index].listTile.horizontalTitleGap,
                      minVerticalPadding: options[index].listTile.minVerticalPadding,
                      minLeadingWidth: options[index].listTile.minLeadingWidth,
                      shape: options[index].listTile.shape,
                      enableFeedback: options[index].listTile.enableFeedback,
                      titleAlignment: options[index].listTile.titleAlignment,
                      dense: options[index].listTile.dense,
                      visualDensity: options[index].listTile.visualDensity,
                      style: options[index].listTile.style,
                      trailing: options[index].listTile.trailing,
                      isThreeLine: options[index].listTile.isThreeLine,
                      leadingAndTrailingTextStyle: options[index].listTile.leadingAndTrailingTextStyle,
                      splashColor: options[index].listTile.splashColor,
                    );
                  },
                ),
              ),
            );
          },
        );
      },
    );
  }
}
