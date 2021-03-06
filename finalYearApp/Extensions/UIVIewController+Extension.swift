import UIKit


extension UIViewController {

    public func addAsChildViewControllerToScrollView(_ vc: UIViewController, toView: UIView, index: Int) {
        self.addChildViewController(vc)
        toView.addSubview(vc.view)
        vc.didMove(toParentViewController: self)
        vc.view.frame.origin.x = self.view.frame.width * CGFloat(index)
    }
    
    public func addAsChildViewController(_ vc: UIViewController, toView: UIView) {
        self.addChildViewController(vc)
        vc.view.frame = toView.frame
        toView.addSubview(vc.view)
        toView.sendSubview(toBack: vc.view)
        vc.didMove(toParentViewController: self)
    }


}
