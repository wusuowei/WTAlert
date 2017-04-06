# WTAlert

[![CI Status](http://img.shields.io/travis/wentianen/WTAlert.svg?style=flat)](https://travis-ci.org/wentianen/WTAlert)
[![Version](https://img.shields.io/cocoapods/v/WTAlert.svg?style=flat)](http://cocoapods.org/pods/WTAlert)
[![License](https://img.shields.io/cocoapods/l/WTAlert.svg?style=flat)](http://cocoapods.org/pods/WTAlert)
[![Platform](https://img.shields.io/cocoapods/p/WTAlert.svg?style=flat)](http://cocoapods.org/pods/WTAlert)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

### CocoaPods
WTAlert is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "WTAlert"
```

### Carthage

1. Add MBProgressHUD to your Cartfile. e.g., `github "wusuowei/WTAlert" ~> 0.1.1`
2. Run `carthage update`
3. Follow the rest of the [standard Carthage installation instructions](https://github.com/Carthage/Carthage#adding-frameworks-to-an-application) to add MBProgressHUD to your project.

##show alert

```object-c
[WTAlert showAlertFrom:self title:@"This is normal title" message:@"This is normal message" cancelButtonTitle:@"cancel" cancle:^{
    NSLog(@"I clicked normal cancel button");
} confirmButtonTitle:@"confirm" confirm:^{
    NSLog(@"I clicked normal confirm button");
}];
```

or

```object-c
__weak typeof(self) weakSelf = self;
[WTAlert showAlertWithBuilder:^(WTAlertBuilder * _Nonnull builder) {
    builder.viewController = weakSelf;
    builder.title = @"This is builder title";
    builder.message = @"This is builer message";
    builder.cancelTitle = @"cancel";
    builder.cancelBlock = ^(){
        NSLog(@"I clicked builder cancel button");
    };
    builder.confirmTitle = @"confirm";
    builder.confirmBlock = ^(){
        NSLog(@"I clicked builder confirm button");
    };
}];
```

## Author

wentianen, 1206860151@qq.com

## License

WTAlert is available under the MIT license. See the LICENSE file for more info.
