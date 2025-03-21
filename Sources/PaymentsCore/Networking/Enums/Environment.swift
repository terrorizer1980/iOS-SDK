import Foundation

public enum Environment {
    case sandbox
    case production

    // swiftlint:disable force_unwrapping
    var baseURL: URL {
        switch self {
        case .sandbox:
            return URL(string: "https://api.sandbox.paypal.com")!
        case .production:
            return URL(string: "https://api.paypal.com")!
        }
    }
    // swiftlint:enable force_unwrapping
}
