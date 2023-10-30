//
//  ViewController.swift
//  ChameleonExample
//
//  Created by 강조은 on 2023/10/23.
//

import UIKit
import ChameleonFramework

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
    var count: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initalize()
    }
    
    func initalize() {
        imageView.image = UIImage(named: "img1")
        view.backgroundColor = UIColor(averageColorFrom: .img1)
    }
    
    @IBAction func clickMinusButton(_ sender: Any) {
        count -= 1
        count = max(0, count)
        viewChange()
    }
    
    @IBAction func clickPlusButton(_ sender: Any) {
        count += 1
        count = min(5, count)
        viewChange()
    }
    
    func viewChange() {
        let img = UIImage(named: "img\(count)")
        imageView.image = img
        view.backgroundColor = UIColor(averageColorFrom: img ?? .img1)
    }
}
