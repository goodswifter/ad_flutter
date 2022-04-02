///
/// Author       : zhongaidong
/// Date         : 2022-03-31 20:28:52
/// Description  : 列表项Widget
///
import 'package:flutter/material.dart';
import 'package:github_client_app/generated/l10n.dart';
import 'package:github_client_app/models/index.dart';

import 'gm_avatar.dart';

class RepoItem extends StatefulWidget {
  // 将`repo.id`作为RepoItem的默认key
  RepoItem(this.repo) : super(key: ValueKey(repo.id));

  final Repo repo;

  @override
  State<RepoItem> createState() => _RepoItemState();
}

class _RepoItemState extends State<RepoItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(top: 0, bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [_wItemHeader(), _widgetContent(), _buildFooter()],
          ),
        ),
      ),
    );
  }

  // 构建卡片底部信息
  Widget _buildFooter() {
    const paddingWidth = 10;
    return IconTheme(
      data: const IconThemeData(color: Colors.grey, size: 15),
      child: DefaultTextStyle(
        style: const TextStyle(color: Colors.grey, fontSize: 12),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Builder(builder: (_) {
            var children = [
              const Icon(Icons.star),
              Text(" " +
                  widget.repo.stargazersCount!
                      .toString()
                      .padRight(paddingWidth)),
              const Icon(Icons.ac_unit),
              Text(" " +
                  widget.repo.openIssuesCount
                      .toString()
                      .padRight(paddingWidth)),
              const Icon(Icons.info_outline),
              Text(" " +
                  widget.repo.forksCount.toString().padRight(paddingWidth)),
            ];

            if (widget.repo.fork) {
              children.add(Text("Forked".padRight(paddingWidth)));
            }

            if (widget.repo.private == true) {
              children.addAll([
                const Icon(Icons.lock),
                Text(" private".padRight(paddingWidth))
              ]);
            }

            return Row(children: children);
          }),
        ),
      ),
    );
  }

  /// 构建项目标题和简介
  Widget _widgetContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.repo.fork ? widget.repo.fullName! : widget.repo.name!,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              fontStyle: widget.repo.fork ? FontStyle.italic : FontStyle.normal,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 12),
            child: widget.repo.description == null
                ? Text(
                    S.of(context).noDescription,
                    style: TextStyle(
                        fontStyle: FontStyle.italic, color: Colors.grey[700]),
                  )
                : Text(
                    widget.repo.description!,
                    maxLines: 3,
                    style: TextStyle(
                      height: 1.15,
                      color: Colors.blueGrey[700],
                      fontSize: 13,
                    ),
                  ),
          ),
        ],
      ),
    );
  }

  /// 构建项目头部
  Widget _wItemHeader() {
    // var subtitle;
    return ListTile(
      leading: gmAvatar(
        // 项目owner头像
        widget.repo.owner!.avatarUrl!,
        width: 24,
        borderRadius: BorderRadius.circular(12),
      ),
      title: Text(
        widget.repo.owner!.login!,
        textScaleFactor: .9,
      ),
      // subtitle: subtitle,
      trailing: Text(widget.repo.language ?? '--'),
    );
  }
}
