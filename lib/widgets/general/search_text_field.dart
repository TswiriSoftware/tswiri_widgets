import 'package:flutter/material.dart';
import 'package:tswiri_widgets/widgets/general/tswiri_filter_chip.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({
    Key? key,
    required this.filters,
    required this.filterTypes,
    required this.filterChange,
    required this.onCancel,
    required this.onChanged,
    required this.onSubmitted,
    required this.backgroundColor,
    required this.defaultFilterColor,
    required this.filterChipColorMap,
  }) : super(key: key);

  ///Refernece to activeFilters;
  final List<String> filters;

  ///A list of filters to display.
  final List<String> filterTypes;

  ///On Filter change
  final void Function(String) filterChange;

  ///On Search Cancel.
  final void Function() onCancel;

  ///On value change.
  final void Function(String) onChanged;

  ///On search submitted
  final void Function(String) onSubmitted;

  ///Background color.
  final Color backgroundColor;

  ///The default color for filters.
  final Color defaultFilterColor;

  ///The color map for the filters.
  final Map<String, Color>? filterChipColorMap;

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchNode = FocusNode();

  @override
  void initState() {
    _searchNode.requestFocus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              const SizedBox(
                width: kMinInteractiveDimension / 2,
              ),
              Flexible(
                child: TextField(
                  controller: _searchController,
                  focusNode: _searchNode,
                  onChanged: widget.onChanged,
                  onSubmitted: widget.onSubmitted,
                ),
              ),
              IconButton(
                onPressed: () {
                  widget.onCancel();
                  _searchController.clear();
                },
                icon: const Icon(
                  Icons.close_sharp,
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: widget.filterTypes
                    .map(
                      (filterType) => TswiriFilterChip(
                        label: filterType,
                        toolTip: '',
                        selected: widget.filters.contains(filterType),
                        onSelected: (value) {
                          _onSelected(value, filterType);
                          widget.filterChange(_searchController.text);
                        },
                        color: widget.filterChipColorMap != null
                            ? widget.filterChipColorMap![filterType]!
                            : widget.defaultFilterColor,
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onSelected(bool selected, String filter) {
    if (widget.filters.contains(filter)) {
      setState(() {
        widget.filters.removeWhere((element) => element == filter);
      });
    } else {
      setState(() {
        widget.filters.add(filter);
      });
    }
  }
}

class SearchFilterBar extends StatefulWidget {
  const SearchFilterBar({
    Key? key,
    required this.filters,
    required this.filterTypes,
    required this.filterChange,
    required this.defaultFilterColor,
    required this.filterChipColorMap,
  }) : super(key: key);

  ///Refernece to activeFilters;
  final List<String> filters;

  ///A list of filters to display.
  final List<String> filterTypes;

  ///On Filter change
  final void Function() filterChange;

  ///The default color for filters.
  final Color defaultFilterColor;

  ///The color map for the filters.
  final Map<String, Color>? filterChipColorMap;

  @override
  State<SearchFilterBar> createState() => _SearchFilterBarState();
}

class _SearchFilterBarState extends State<SearchFilterBar> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // spacing: 5,
          children: widget.filterTypes
              .map(
                (filterType) => TswiriFilterChip(
                  label: filterType,
                  toolTip: '',
                  selected: widget.filters.contains(filterType),
                  onSelected: (value) {
                    _onSelected(value, filterType);
                    widget.filterChange();
                  },
                  color: widget.filterChipColorMap != null
                      ? widget.filterChipColorMap![filterType]!
                      : widget.defaultFilterColor,
                ),
              )
              .toList(),
        ),
      ),
    );
  }

  void _onSelected(bool selected, String filter) {
    if (widget.filters.contains(filter)) {
      setState(() {
        widget.filters.removeWhere((element) => element == filter);
      });
    } else {
      setState(() {
        widget.filters.add(filter);
      });
    }
  }
}

class ContainerFilterBar extends StatefulWidget {
  const ContainerFilterBar({
    Key? key,
    required this.filters,
    required this.filterTypes,
    required this.filterChange,
    required this.defaultFilterColor,
    required this.filterChipColorMap,
  }) : super(key: key);

  ///Refernece to activeFilters;
  final List<String> filters;

  ///A list of filters to display.
  final List<String> filterTypes;

  ///On Filter change
  final void Function() filterChange;

  ///The default color for filters.
  final Color defaultFilterColor;

  ///The color map for the filters.
  final Map<String, Color>? filterChipColorMap;

  @override
  State<ContainerFilterBar> createState() => _ContainerFilterBarState();
}

class _ContainerFilterBarState extends State<ContainerFilterBar> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // spacing: 5,
          children: widget.filterTypes
              .map(
                (filterType) => TswiriFilterChip(
                  label: filterType,
                  toolTip: '',
                  selected: widget.filters.contains(filterType),
                  color: widget.filterChipColorMap != null
                      ? widget.filterChipColorMap![filterType]!
                      : widget.defaultFilterColor,
                  onSelected: (value) {
                    _onSelected(value, filterType);
                    widget.filterChange();
                  },
                ),
              )
              .toList(),
        ),
      ),
    );
  }

  void _onSelected(bool selected, String filter) {
    if (widget.filters.contains(filter)) {
      setState(() {
        widget.filters.removeWhere((element) => element == filter);
      });
    } else {
      setState(() {
        widget.filters.add(filter);
      });
    }
  }
}
