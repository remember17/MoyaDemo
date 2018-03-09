# MoyaDemo

详细文章在这里：[Moya网络层 + ObjectMapper数据转模型](https://www.jianshu.com/p/b0f0fb4189ba)

Swift中的网络请求库 **[Alamofire](https://github.com/Alamofire/Alamofire)**，相当于OC中的 **[AFNetworking](https://github.com/AFNetworking/AFNetworking)**，在使用的过程中，我们一般都会对Alamofire做进一步的封装，可是结果有时不太理想。

所以就引出了 **[Moya](https://github.com/Moya/Moya)**，它是一个网络抽象层，封装的比较充分，并且是直接调用Alamofire，借用一下Moya的图如下。

![Moya](http://upload-images.jianshu.io/upload_images/3873004-9fcf645eab42a5d1.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

完成网络请求拿到JSON数据之后，通常都需要转模型，所以本文顺带介绍一下 **[ObjectMapper](https://github.com/Hearst-DD/ObjectMapper)** 的基本使用方法。

## 一、Moya的使用方法

#### 1、创建网络层.swift文件

这里我创建了一个WHService.swift文件，并导入头文件import Moya

![创建swift.文件](http://upload-images.jianshu.io/upload_images/3873004-7af173ca23d146ef.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

#### 2、定义网络请求接口

实际上是定义一个枚举，枚举名就是每个网络请求API。

```objc
// 定义请求方法
enum WHService {
    case demo1
    case demo2(name: String)
    case demo3(name: String, score: Int)
}
```

#### 3、扩展遵守协议，并实现协议方法

更多内容：[Moya网络层 + ObjectMapper数据转模型](https://www.jianshu.com/p/b0f0fb4189ba)