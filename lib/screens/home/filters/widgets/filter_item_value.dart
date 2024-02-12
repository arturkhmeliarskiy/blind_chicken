import 'package:flutter/material.dart';
import 'package:models/models.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';

class FilterItemValue extends StatefulWidget {
  const FilterItemValue({
    super.key,
    required this.isSelect,
    required this.item,
    required this.onSelect,
    required this.onDelete,
  });

  final bool isSelect;
  final FilterItemDataModel item;
  final ValueChanged<FilterItemDataModel> onSelect;
  final ValueChanged<FilterItemDataModel> onDelete;

  @override
  State<FilterItemValue> createState() => _FilterItemValueState();
}

class _FilterItemValueState extends State<FilterItemValue> {
  bool _isSelect = false;

  @override
  void initState() {
    _isSelect = widget.isSelect;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _isSelect = !_isSelect;
        });
        if (_isSelect) {
          widget.onSelect(widget.item);
        } else {
          widget.onDelete(widget.item);
        }
      },
      child: SizedBox(
        height: 50,
        child: Row(
          children: [
            Checkbox(
              value: _isSelect,
              checkColor: BlindChickenColors.activeBorderTextField,
              activeColor: BlindChickenColors.backgroundColor,
              side: MaterialStateBorderSide.resolveWith(
                (states) => const BorderSide(
                  width: 1.0,
                  color: BlindChickenColors.activeBorderTextField,
                ),
              ),
              onChanged: (value) {
                setState(() {
                  _isSelect = !_isSelect;
                });
                if (_isSelect) {
                  widget.onSelect(widget.item);
                } else {
                  widget.onDelete(widget.item);
                }
              },
            ),
            RichText(
              maxLines: 1,
              text: TextSpan(
                children: BlindChickenCheckWordStyle.textToWords(
                  Operators.operstors(widget.item.value),
                  context,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
