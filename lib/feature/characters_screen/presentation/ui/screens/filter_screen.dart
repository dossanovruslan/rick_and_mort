import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:group_button/group_button.dart';
import 'package:provider/provider.dart';
import 'package:rick_and_morty/feature/characters_screen/presentation/state/bloc/characters_screen_bloc.dart';

class FilterScreen extends StatefulWidget {
  final String? gender;
  final String? status;

  const FilterScreen({
    super.key,
    this.gender,
    this.status,
  });

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  late GroupButtonController _statusController;
  late GroupButtonController _genderController;

  String? gender;
  String? status;

  final statusList = [
    'alive',
    'dead',
    'unknown',
  ];

  final genderList = [
    'female',
    'male',
    'genderless',
    'unknown',
  ];

  @override
  void initState() {
    gender = widget.gender;
    status = widget.status;
    if (status != null) {
      _statusController =
          GroupButtonController(selectedIndex: statusList.indexOf(status!));
    } else {
      _statusController = GroupButtonController();
    }

    if (gender != null) {
      _genderController =
          GroupButtonController(selectedIndex: genderList.indexOf(gender!));
    } else {
      _genderController = GroupButtonController();
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.read<CharactersScreenBloc>().add(
              GetCharactersEvent(
                page: 1,
                query: '',
                gender: gender,
                status: status,
              ),
            );

        Navigator.pop(context, FilterData(status: status, gender: gender));
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          actions: [
            if (gender != null || status != null)
              GestureDetector(
                onTap: () {
                  _genderController.unselectAll();
                  _statusController.unselectAll();
                  gender = null;
                  status = null;
                  setState(() {});
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: SvgPicture.asset(
                      'assets/svg_icons/remove_filter_icon.svg'),
                ),
              )
          ],
        ),
        body: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text('Статус'),
            ),
            GroupButton(
              controller: _statusController,
              options: const GroupButtonOptions(
                groupingType: GroupingType.column,
              ),
              buttons: statusList,
              buttonIndexedBuilder: (selected, index, context) {
                return _CheckBoxTile(
                  title: statusList[index],
                  selected: selected,
                  onTap: () {
                    if (!selected) {
                      status = statusList[index];
                      _statusController.selectIndex(index);

                      setState(() {});
                    }
                  },
                );
              },
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text('Пол'),
            ),
            GroupButton(
              controller: _genderController,
              options: const GroupButtonOptions(
                groupingType: GroupingType.column,
              ),
              buttons: genderList,
              buttonIndexedBuilder: (selected, index, context) {
                return _CheckBoxTile(
                  title: genderList[index],
                  selected: selected,
                  onTap: () {
                    if (!selected) {
                      _genderController.selectIndex(index);
                      gender = genderList[index];

                      setState(() {});
                    }
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _CheckBoxTile extends StatelessWidget {
  const _CheckBoxTile({
    required this.selected,
    required this.onTap,
    required this.title,
  });

  final String title;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: onTap,
      leading: Checkbox(
        value: selected,
        onChanged: (val) {
          onTap();
        },
      ),
    );
  }
}

class FilterData {
  final String? gender;
  final String? status;

  FilterData({this.gender, this.status});
}
