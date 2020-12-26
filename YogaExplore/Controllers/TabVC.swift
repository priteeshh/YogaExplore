//
//  TabVC.swift
//  YogaExplore
//
//  Created by Preeteesh Remalli on 25/12/20.
//

import UIKit

class TabVC: UIViewController {
    @IBOutlet weak var tabView: UIView!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var yogaImageView: UIImageView!
    @IBOutlet weak var yogaLbl: UILabel!
    @IBOutlet weak var chatImageView: UIImageView!
    @IBOutlet weak var chatLbl: UILabel!
    @IBOutlet weak var articleImageView: UIImageView!
    @IBOutlet weak var carticleLbl: UILabel!
    @IBOutlet weak var settingsImageView: UIImageView!
    @IBOutlet weak var settingsLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabView.round()
        tabView.layer.shadowOpacity = 1
        tabView.layer.shadowColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
      }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    @IBAction func yogaTapped(_ sender: Any) {
        guard let childVC = self.storyboard?.instantiateViewController(withIdentifier: "YogaVC") as? YogaVC else {
          return
        }
        loadContinerView(childVC: childVC)
        yogaImageView.image = #imageLiteral(resourceName: "streamline-icon-yoga-meditate@100x100")
        chatImageView.image = #imageLiteral(resourceName: "streamline-icon-messages-bubble-text_1@100x100")
        articleImageView.image = #imageLiteral(resourceName: "streamline-icon-newspaper-read@100x100 (1)")
        settingsImageView.image = #imageLiteral(resourceName: "streamline-icon-cog@100x100")
        
        yogaLbl.textColor = #colorLiteral(red: 0.7762444615, green: 0.6881154776, blue: 0.6065729856, alpha: 1)
        chatLbl.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        carticleLbl.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        settingsLbl.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
    @IBAction func chatTapped(_ sender: Any) {
        guard let childVC = self.storyboard?.instantiateViewController(withIdentifier: "ChatVC") as? ChatVC else {
          return
        }
        loadContinerView(childVC: childVC)
        yogaImageView.image = #imageLiteral(resourceName: "streamline-icon-yoga-meditate@100x100 (1)")
        chatImageView.image = #imageLiteral(resourceName: "streamline-icon-messages-bubble-text_1@100x100 (1)")
        articleImageView.image = #imageLiteral(resourceName: "streamline-icon-newspaper-read@100x100 (1)")
        settingsImageView.image = #imageLiteral(resourceName: "streamline-icon-cog@100x100")
        
        yogaLbl.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        chatLbl.textColor = #colorLiteral(red: 0.7762444615, green: 0.6881154776, blue: 0.6065729856, alpha: 1)
        carticleLbl.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        settingsLbl.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
    @IBAction func articlesTapped(_ sender: Any) {
        guard let childVC = self.storyboard?.instantiateViewController(withIdentifier: "ArticlesVC") as? ArticlesVC else {
          return
        }
        loadContinerView(childVC: childVC)
        yogaImageView.image = #imageLiteral(resourceName: "streamline-icon-yoga-meditate@100x100 (1)")
        chatImageView.image = #imageLiteral(resourceName: "streamline-icon-messages-bubble-text_1@100x100")
        articleImageView.image = #imageLiteral(resourceName: "streamline-icon-newspaper-read@100x100")
        settingsImageView.image = #imageLiteral(resourceName: "streamline-icon-cog@100x100")
        
        yogaLbl.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        chatLbl.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        carticleLbl.textColor = #colorLiteral(red: 0.7762444615, green: 0.6881154776, blue: 0.6065729856, alpha: 1)
        settingsLbl.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
    @IBAction func settingsTapped(_ sender: Any) {
        guard let childVC = self.storyboard?.instantiateViewController(withIdentifier: "SettingsVC") as? SettingsVC else {
          return
        }
        loadContinerView(childVC: childVC)
        yogaImageView.image = #imageLiteral(resourceName: "streamline-icon-yoga-meditate@100x100 (1)")
        chatImageView.image = #imageLiteral(resourceName: "streamline-icon-messages-bubble-text_1@100x100")
        articleImageView.image = #imageLiteral(resourceName: "streamline-icon-newspaper-read@100x100 (1)")
        settingsImageView.image = #imageLiteral(resourceName: "streamline-icon-cog@100x100 (1)")
        
        yogaLbl.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        chatLbl.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        carticleLbl.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        settingsLbl.textColor = #colorLiteral(red: 0.7762444615, green: 0.6881154776, blue: 0.6065729856, alpha: 1)
    }
    func loadContinerView(childVC: UIViewController) {
        DispatchQueue.main.async{
            self.removeChild()
            self.addChild(childVC)
            childVC.view.autoresizingMask = [.flexibleHeight, .flexibleWidth]
            childVC.view.frame = self.containerView.bounds
            childVC.view.removeFromSuperview()
            self.containerView.addSubview(childVC.view)
            childVC.didMove(toParent: self)
        }

    }
    @IBAction func backBtnTapped(_ sender: Any) {
        _ = navigationController?.popViewController(animated: true)
    }
}
extension UIView {
    func round () {
        self.layer.cornerRadius = self.frame.size.height / 2
        self.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
    func imageRound () {
        self.layer.cornerRadius = 150 / 2
        self.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
    }
    func completeRound () {
        self.layer.cornerRadius = self.frame.size.height / 2
        self.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMaxXMaxYCorner]
    }
    func greyShadow(){
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowOffset = CGSize(width: 3, height: 3)
        self.layer.shadowOpacity = 0.7
        self.layer.shadowRadius = 4.0
    }
    func pulse(withIntensity intensity: CGFloat, withDuration duration: Double, loop: Bool) {
            UIView.animate(withDuration: duration, delay: 0, options: [.repeat, .autoreverse], animations: {
                loop ? nil : UIView.setAnimationRepeatCount(1)
                self.transform = CGAffineTransform(scaleX: intensity, y: intensity)
            }) { (true) in
                self.transform = CGAffineTransform.identity
            }
        }
}
extension UIViewController {

    func removeChild() {
        self.children.forEach {
            $0.willMove(toParent: nil)
            $0.view.removeFromSuperview()
            $0.removeFromParent()
        }
    }
}
