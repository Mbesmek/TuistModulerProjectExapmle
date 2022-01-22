import UIKit


@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let storyboard = UIStoryboard(name: "HelloTuistViewController", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "HelloTuistViewController")
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
//        TuistAppKit.hello()
    

        return true
    }

}
