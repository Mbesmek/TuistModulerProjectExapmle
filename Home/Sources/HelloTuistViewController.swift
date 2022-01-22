//
//  HelloTuistViewController.swift
//  Home
//
//  Created by Melih Bugra Esmek on 22.01.2022.
//

import UIKit
import Basket

class HelloTuistViewController: UIViewController {

    @IBOutlet weak var labelWelcome: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        labelWelcome.text = "Please tabbed button for look your basket"
        // Do any additional setup after loading the view.
    }
    

    @IBAction func tabbedShowBasket(_ sender: Any) {
        
    }
    

}
