/// 
/// Author       : zhongaidong
/// Date         : 2022-03-19 21:54:54
/// Description  : 使用示例：
/// 


/*

// 页面A中
...
// 监听登录事件
bus.on("login", (arg) {
  // do something
});

// 登录页B中
...
// 登录成功后触发登录事件，页面A中订阅者会被调用
bus.emit("login", userInfo);

*/