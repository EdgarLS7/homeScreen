import 'package:flutter/material.dart';
import 'package:template_kudos_view/models/contact.dart';
import 'package:template_kudos_view/widgets/widgets.dart';

class ContactListPage extends StatefulWidget {
  const ContactListPage({
    Key? key,
  }) : super(key: key);

  @override
  _ContactListPageState createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
  int? _visibleItems;
  double? _itemExtent;

  @override
  void initState() {
    _visibleItems = 5;
    _itemExtent = 463.77;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
        title: const Text('Kudos Home'),
      ),
      body: PerspectiveListView(
        visualizedItems: _visibleItems,
        itemExtent: _itemExtent,
        enableBackItemsShadow: true,
        backItemsShadowColor: Theme.of(context).scaffoldBackgroundColor,
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
          bottom: 45,
        ),
        onTapFrontItem: (value) {},
        children: List.generate(KudosJ.contacts.length, (index) {
          final borderColor = Colors.accents[index % Colors.accents.length];
          final contact = KudosJ.contacts[index];
          return Cards( 
            borderColor: borderColor,
            contact: contact,
          );
        }),
      ),
    );
  }
}