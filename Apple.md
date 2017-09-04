## 苹果内购 IAP 笔记

sku: 开发者自己的标识符,保证自己的应用之间唯一即可. bundle id是苹果使用的,要求所有应用间唯一

[官方文档](https://developer.apple.com/library/content/documentation/NetworkingInternet/Conceptual/StoreKitGuide/Chapters/Products.html)是最好的...


1. 设计产品

  消耗品 订阅产品

2. 从苹果服务器获取产品信息,显示产品UI

  根据产品id来获取产品信息,可以从本地读取产品id,也可以从应用自己的服务器请求. 苹果并没有限制使用哪种做法, 两种方式各有优点.

  通过 `SKProductsRequest`查询app store, 需要保持对查询对象的强引用,否则系统可能会在完成前回收掉此对象.

  协议`SKProductsRequestDelegate`处理App Store的响应.

  ```
    // Custom method
    - (void)validateProductIdentifiers:(NSArray *)productIdentifiers
    {
        SKProductsRequest *productsRequest = [[SKProductsRequest alloc]
                        initWithProductIdentifiers:[NSSet setWithArray:productIdentifiers]];

        // Keep a strong reference to the request.
        self.request = productsRequest;
        productsRequest.delegate = self;
        [productsRequest start];
    }

    // SKProductsRequestDelegate protocol method
    - (void)productsRequest:(SKProductsRequest *)request
        didReceiveResponse:(SKProductsResponse *)response
    {
        self.products = response.products;

        for (NSString *invalidIdentifier in response.invalidProductIdentifiers) {
            // Handle any invalid product identifiers.
        }

        [self displayStoreUI]; // Custom method
    }
  ```
  苹果说 商城UI很重要,值得投入. StoreKit无法提供UI,必须用户按自己的需要设计, 可以参考苹果的设计准则.

  测试: 在开发机器上使用测试账号登录, 使用开发build的app, 注意不能把开发账号用在正式的环境中,否则测试账号会无效.

3. 用户选择产品,请求支付

  ```
    // 创建支付请求
    SKProduct *product = <# Product returned by a products request #>;
    SKMutablePayment *payment = [SKMutablePayment paymentWithProduct:product];
    payment.quantity = 2;
    // 提交支付请求
    [[SKPaymentQueue defaultQueue] addPayment:payment];
  ```
  苹果提醒如何处理欺诈支付

4. 等待App Store处理交易

  交易队列(transaction queue)扮演重要角色, app需要在启动完成后添加观察者到默认队列 `[[SKPaymentQueue defaultQueue] addTransactionObserver:observer];`
  观察者实现`SKPaymentTransactionObserver`协议来接受通知

  对于消耗商品, 发货就好,不要求持久保存收据. (我们的需求,服务器需要充值记录)

  发货之后,完成交易. 不要在交易完成之前调用此方法,完成交易之后也可以再发货. 完成交易后需要更新UI通知用户.
  ```
    SKPaymentTransaction *transaction = <# The current payment #>;
    [[SKPaymentQueue defaultQueue] finishTransaction:transaction];
  ```
  测试: 测试成功交易,测试中断的交易,确认交易完成之后才调用 `finishTransaction:transaction`

提交审核:

* 开发期间: 开发签名app + 开发者开发服务器 + 苹果测试服务器
* 审核期间: 产品签名app + 开发者生产服务器 + 苹果测试服务器
* 正式环境: 产品签名app + 开发者生产服务器 + 苹果正式服务器

服务器收据验证: 推荐的做法是先验证产品服务器, 如果收到 沙箱收据用于产品 的报错, 再去沙箱服务器验证. (去不同地址验证)

苹果还提供了提交审核需要的[检查项](https://developer.apple.com/library/content/documentation/NetworkingInternet/Conceptual/StoreKitGuide/Chapters/AppReview.html#//apple_ref/doc/uid/TP40008267-CH10-SW4).



## ssh-add 存储ssh key到登录keychain

一次系统升级后，使用id_rsa需要每次都输入密码了，好奇怪。

使用`ssh-add -K 私钥文件名`,可以解决这个问题。  see `man ssh-add`

ps: 由于ssh-add,所以mac上使用id_rsa还是优先设置密码.

## iOS的ad hoc测试包发布方式

* 可用的设备id是随着ipa一块发布的. app的跟目录下有一个xml文件embedded.mobileprovision,里面包含有ProvisionedDevices的array. 最多可以支持100个.

## Gatekeeper: OS X的反恶意软件检测

设置里的选项(app store, 认证的开发者, 任何地点), 第一次运行从网络下载的程序弹出的提示, 等功能都来源于此系统.

## homebrew

homebrew删除时并不处理依赖，比如brew rm xz, 其实libpng还依赖此库，但依然会毫无提示的继续删。
2017-09-04 更新: 现在已经可以处理依赖了.
