import 'package:flutter/material.dart';
import './vw.dart';

class VWSelectOption {
  final dynamic value;
  final ListTile listTile;
  final String displayText;

  const VWSelectOption({
    required this.value,
    required this.listTile,
    required this.displayText,
  });
}

class VWSelect extends StatelessWidget {
  final InputDecoration? inputDecoration;
  final List<VWSelectOption> options;
  final Function(dynamic value) onSelected;
  final String title;
  final TextStyle? titleTextStyle;
  final BoxDecoration? headerBoxDecoration;
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
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

    const defaultInputDecoration = InputDecoration(
      suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
    );

    const defaultTitleTextStyle = TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w600,
    );

    var defaultHeaderBoxDecoration = BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.15),
        ),
      ),
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
          builder: (context) {
            return SizedBox(
              height: 1000,
              key: const Key("vw_select_modal"),
              child: VWColumn(
                horizontalAlignment: CrossAxisAlignment.center,
                verticalAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    key: const Key("vw_select_header"),
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 20,
                    ),
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: headerBoxDecoration ?? defaultHeaderBoxDecoration,
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: titleTextStyle ?? defaultTitleTextStyle,
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
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
                ],
              ),
            );
          },
        );
      },
    );
  }
}
