import UIKit

extension UIViewController {
    func showAlert(message: String) {
        let cancelAction = UIAlertAction(title: "OK", style: .default)
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        alert.addAction(cancelAction)
        self.present(alert, animated: true)
    }
}
