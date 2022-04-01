///
/// Author       : zhongaidong
/// Date         : 2022-03-31 18:57:38
/// Description  :
///

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:github_client_app/common/global.dart';
import 'package:github_client_app/common/net/git.dart';
import 'package:github_client_app/generated/l10n.dart';
import 'package:github_client_app/models/index.dart';
import 'package:provider/provider.dart';
import 'package:github_client_app/states/view_model_index.dart';

/*
用户名: goodswifter
密码  : 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 
 */
class LoginRoute extends StatefulWidget {
  const LoginRoute({Key? key}) : super(key: key);

  @override
  State<LoginRoute> createState() => _LoginRouteState();
}

class _LoginRouteState extends State<LoginRoute> {
  final TextEditingController _unameController = TextEditingController();
  final TextEditingController _pwdController = TextEditingController();
  bool pwdShow = false;
  final GlobalKey _formKey = GlobalKey<FormState>();
  bool _nameAutoFocus = true;

  @override
  void initState() {
    super.initState();
    // 自动填充上次登录的用户名，填充后将焦点定位到密码输入框
    _unameController.text = Global.profile.lastLogin ?? '';
    if (_unameController.text.isNotEmpty) {
      _nameAutoFocus = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    var sl = S.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(sl.login)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              TextFormField(
                autofocus: _nameAutoFocus,
                controller: _unameController,
                decoration: InputDecoration(
                  labelText: sl.userName,
                  hintText: sl.userName,
                  prefixIcon: const Icon(Icons.person),
                ),
                // 校验用户名（不能为空）
                validator: (v) {
                  return v == null || v.trim().isNotEmpty
                      ? null
                      : sl.userNameRequired;
                },
              ),
              TextFormField(
                controller: _pwdController,
                autofocus: !_nameAutoFocus,
                decoration: InputDecoration(
                  labelText: sl.password,
                  hintText: sl.password,
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon:
                        Icon(pwdShow ? Icons.visibility_off : Icons.visibility),
                    onPressed: () {
                      setState(() {
                        pwdShow = !pwdShow;
                      });
                    },
                  ),
                ),
                obscureText: !pwdShow,
                // 校验密码（不能为空）
                validator: (v) {
                  return v == null || v.trim().isNotEmpty
                      ? null
                      : sl.passwordRequired;
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: ConstrainedBox(
                  constraints: const BoxConstraints.expand(height: 55.0),
                  child: ElevatedButton(
                    // color: Theme.of(context).primaryColor,
                    onPressed: _onLogin,
                    // textColor: Colors.white,
                    child: Text(sl.login),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// 登录
  void _onLogin() async {
    // 先验证各个表单字段是否合法
    if ((_formKey.currentState as FormState).validate()) {
      EasyLoading.show();
      User? user;
      try {
        user = await Git(context)
            .login(_unameController.text, _pwdController.text);
        // 因为登录页返回后，首页会build，所以我们传false，更新user后不触发更新
        Provider.of<UserViewModel>(context, listen: false).user = user;
      } on DioError catch (e) {
        // 登录失败则提示
        if (e.response?.statusCode == 401) {
          EasyLoading.showError(S.of(context).userNameOrPasswordWrong);
        } else {
          EasyLoading.showError(e.toString());
        }
      } finally {
        // 隐藏loading框
        EasyLoading.dismiss();
      }

      // 登录成功则返回
      if (user != null) {
        Navigator.of(context).pop();
      }
    }
  }
}
