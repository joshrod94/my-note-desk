import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class FontFamilyDropdown extends StatefulWidget {
  final Function(String) onFontFamilyChanged;

  const FontFamilyDropdown({super.key, required this.onFontFamilyChanged});

  @override
  State<FontFamilyDropdown> createState() => _FontFamilyDropdownState();
}

class _FontFamilyDropdownState extends State<FontFamilyDropdown> {
  String _selectedFontFamily = 'Roboto'; // Default font
  final TextEditingController _searchController = TextEditingController();
  List<String> _fontFamilies = [];

  @override
  void initState() {
    super.initState();
    // Get the list of available Google Fonts and sort them
    _fontFamilies = GoogleFonts.asMap().keys.toList()..sort();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<String>(
        isExpanded: true,
        hint: Text(
          _selectedFontFamily,
          style: GoogleFonts.getFont(_selectedFontFamily, fontSize: 14),
          overflow: TextOverflow.ellipsis,
        ),
        items: _fontFamilies
            .map((fontFamily) => DropdownMenuItem<String>(
                  value: fontFamily,
                  child: Text(
                    fontFamily,
                    style: GoogleFonts.getFont(fontFamily, fontSize: 14),
                    overflow: TextOverflow.ellipsis,
                  ),
                ))
            .toList(),
        value: _selectedFontFamily,
        onChanged: (String? value) {
          if (value != null) {
            setState(() {
              _selectedFontFamily = value;
            });
            widget.onFontFamilyChanged(value);
          }
        },
        buttonStyleData: ButtonStyleData(
          height: 30,
          width: 160, // Adjust width as needed
          padding: const EdgeInsets.only(left: 14, right: 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4), // Optional: Add border radius
            border: Border.all(
              color: Colors.black26,
            ),
            color: Colors.white, // Optional: Set background color
          ),
          elevation: 0, // Optional: Adjust elevation                                                    
        ),
        iconStyleData: const IconStyleData(
          icon: Icon(
            Icons.arrow_drop_down,
            size: 20,
          ),
          iconSize: 14,
          iconEnabledColor: Colors.black,
          iconDisabledColor: Colors.grey,
        ),
        dropdownStyleData: DropdownStyleData(
          maxHeight: 400, // Show about 15 items initially, then scroll
          width: 200, // Adjust dropdown width as needed
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.white,
          ),
          offset: const Offset(0, 0),
          scrollbarTheme: ScrollbarThemeData(
            radius: const Radius.circular(40),
            thickness: MaterialStateProperty.all<double>(6),
            thumbVisibility: MaterialStateProperty.all<bool>(true),
          ),
        ),
        menuItemStyleData: const MenuItemStyleData(
          height: 40,
          padding: EdgeInsets.only(left: 14, right: 14),
        ),
        // Add search functionality
        dropdownSearchData: DropdownSearchData(
          searchController: _searchController,
          searchInnerWidgetHeight: 50,
          searchInnerWidget: Container(
            height: 50,
            padding: const EdgeInsets.only(
              top: 8,
              bottom: 4,
              right: 8,
              left: 8,
            ),
            child: TextFormField(
              expands: true,
              maxLines: null,
              controller: _searchController,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 8,
                ),
                hintText: 'Search for a font...',
                hintStyle: const TextStyle(fontSize: 12),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          searchMatchFn: (item, searchValue) {
            return item.value.toString().toLowerCase().contains(searchValue.toLowerCase());
          },
        ),
        // Clear search field when dropdown is closed
        onMenuStateChange: (isOpen) {
          if (!isOpen) {
            _searchController.clear();
          }
        },
      ),
    );
  }
}
