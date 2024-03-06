//
//  ViewController.swift
//  SegmentedController
//
//  Created by Павел Ершов on 06.03.2024.
//

import UIKit

class ViewController: UIViewController {
    
    var segmentControll = UISegmentedControl()
    var imageView = UIImageView()
    var menuArray = ["Sun", "Cat", "Vans"]
    var imageArray = [UIImage(named: "sddefault.jpg"),
                      UIImage(named: "kot.jpg"),
                      UIImage(named: "vans.jpeg")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // image
        self.imageView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        self.imageView.center = self.view.center
        self.imageView.image = self.imageArray[0]
        self.view.addSubview(imageView)
        
        self.segmentControll = UISegmentedControl(items: self.menuArray)
        self.segmentControll.frame = CGRect(x: 100, y: 700, width: 200, height: 30)
        self.view.addSubview(segmentControll)
        
        self.segmentControll.addTarget(self, action: #selector(selectedValue), for: .valueChanged)
    }
    
    @objc func selectedValue(sender: UISegmentedControl) {
        
            let segmentIndex = sender.selectedSegmentIndex
            
            self.imageView.image = self.imageArray[segmentIndex]
    }
}

