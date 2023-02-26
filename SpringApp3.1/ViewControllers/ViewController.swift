//
//  ViewController.swift
//  SpringApp3.1
//
//  Created by Dinar on 26.02.2023.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {

    //MARK: IBOtlet
    @IBOutlet var animationView: SpringView!
    
    @IBOutlet var valueAnimationLabel: UILabel! {
        didSet {
            valueAnimationLabel.text = animation.descriptionForAnimation
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationView.layer.cornerRadius = 30
        animationView.backgroundColor = .blue
        
    }

    //MARK: IBAction
    @IBAction func pressedButton(_ sender: UIButton) {
        
        
        animationView.animation = animation.nameAnimation
        animationView.curve = animation.curve
        animationView.force = animation.force
        animationView.duration = animation.duration
        animationView.delay = animation.delay
        animationView.animate()
        valueAnimationLabel.text = animation.descriptionForAnimation
        
        animation = Animation.getAnimation()
        sender.setTitle("Start \(animation.nameAnimation)", for: .normal)
        
    }
    
    
    //MARK: private
    var animation = Animation.getAnimation()
    
}

