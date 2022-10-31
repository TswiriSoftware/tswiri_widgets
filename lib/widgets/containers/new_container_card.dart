import 'package:flutter/material.dart';
import 'package:tswiri_widgets/colors/colors.dart';

class NewContainerCard extends StatelessWidget {
  const NewContainerCard({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        child: ListTile(
          title: Text(
            'New Container',
            style: Theme.of(context).textTheme.bodyLarge,
            // textAlign: TextAlign.center,
          ),

          trailing: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
          // leading: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
        ),
        // child: Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Column(
        //         children: [
        //           Text(
        //             '+',
        //             style: Theme.of(context).textTheme.bodyMedium,
        //           ),
        //           Text(
        //             '(New Container)',
        //             style: Theme.of(context).textTheme.bodySmall,
        //           ),
        //         ],
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
