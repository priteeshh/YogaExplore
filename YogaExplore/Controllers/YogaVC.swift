//
//  YogaVC.swift
//  YogaExplore
//
//  Created by Preeteesh Remalli on 25/12/20.
//

import UIKit

class YogaVC: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var ratingView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.imageRound()
        ratingView.completeRound()
        ratingView.greyShadow()
        ratingView.frame = CGRect(x: 207.5, y: 225, width: 1, height: 50)
        self.imageView.frame = CGRect(x: 0, y: 0, width: 414, height: 200)

        let options: UIView.AnimationOptions = .transitionCurlDown
        UIView.animate(withDuration: 0.5, delay: 0, options: options) {
            self.imageView.image = #imageLiteral(resourceName: "Top image")
            self.imageView.frame = CGRect(x: 0, y: 0, width: 414, height: 350)
            self.ratingView.frame = CGRect(x: 50, y: 325, width: 315, height: 50)
        }

        // Do any additional setup after loading the view.
    }

}
