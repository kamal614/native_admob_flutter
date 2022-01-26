import Flutter
import GoogleMobileAds2

class BannerAdViewFactory: NSObject, FlutterPlatformViewFactory {
    let messenger: FlutterBinaryMessenger

    init(messenger: FlutterBinaryMessenger) {
        self.messenger = messenger
    }

    func create(withFrame _: CGRect, viewIdentifier _: Int64, arguments args: Any?) -> FlutterPlatformView {
        let creationParams = args as? [String: Any]
        return BannerAdView(data: creationParams, messenger: messenger)
    }

    public func createArgsCodec() -> FlutterMessageCodec & NSObjectProtocol {
        return FlutterStandardMessageCodec.sharedInstance()
    }
}
