import 'package:flutter/material.dart';
import 'package:new_test_app/common/view/app_bar_action_widget.dart';
import 'package:new_test_app/common/view/divider_widget.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final Widget? prefixWidget;
  final List<AppBarActionWidget>? actions;
  final String title;

  const AppBarWidget({required this.title, this.prefixWidget, this.actions, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(child: _buildAppBarRow()),
            const SizedBox(height: 10.0),
            buildDivider(),
          ],
        ),
      );

  Widget _buildAppBarRow() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        children: [
          if (prefixWidget != null) ...[
            prefixWidget!,
            const SizedBox(width: 30),
          ],
          Expanded(
            child: Text(
              title,
              style: const TextStyle(fontSize: 20),
            ),
          ),
          _buildAction(),
        ],
      ),
    );
  }

  Widget _buildAction() {
    List<Widget>? actionsToBuild = actions;
    if (actionsToBuild == null) {
      return const SizedBox.shrink();
    }

    return ListView.separated(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (ctx, idx) => actionsToBuild[idx],
      separatorBuilder: (_, __) => const SizedBox(width: 10),
      itemCount: actionsToBuild.length,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
