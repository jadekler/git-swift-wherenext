import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        print("Hello world")
        Alamofire.request(.GET, "https://api.github.com/users/jadekler")
        .responseJSON {
            response in
            print(response.request)  // original URL request
            print(response.response) // URL response
            print(response.data)     // server data
            print(response.result)   // result of response serialization

            if let JSON = response.result.value {
                print("JSON: \(JSON)")
            }
        }
        print("Hello world")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}