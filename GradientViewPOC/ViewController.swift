//
//  ViewController.swift
//  GradientViewPOC
//
//  Created by Ventuno Technologies on 16/04/20.
//  Copyright © 2020 Ventuno Technologies. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    var mGradientLayer:CAGradientLayer?    
    @IBOutlet weak var mGradientHld: UIView!
    @IBOutlet weak var mLeftGradientHld: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        createRightGradientLayer()
        createLeftGradientLayer()
       
    }
    
    func createRightGradientLayer() {
        if let mGradientHld = mGradientHld {
            mGradientHld.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            mGradientLayer = CAGradientLayer()
            mGradientLayer?.frame = mGradientHld.bounds
            mGradientLayer?.colors = [UIColor.blue.cgColor, UIColor.black.cgColor]
            mGradientLayer?.startPoint = CGPoint(x: 1, y: -0.2);
            mGradientLayer?.endPoint = CGPoint(x: 0.0, y: 0.0);
            if let mGradientLayer = mGradientLayer {
                mGradientHld.layer.insertSublayer(mGradientLayer, at: 0)
            }
        }
    }
    
    func createLeftGradientLayer() {
        if let mGradientHld = mLeftGradientHld {
            mGradientHld.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            mGradientLayer = CAGradientLayer()
            mGradientLayer?.frame = mGradientHld.bounds
            mGradientLayer?.colors = [UIColor.red.cgColor, UIColor.black.cgColor]
            mGradientLayer?.startPoint = CGPoint(x: 0.0, y: 0.0);
            mGradientLayer?.endPoint = CGPoint(x: 0.75, y: 0.2);
            if let mGradientLayer = mGradientLayer {
                mGradientHld.layer.insertSublayer(mGradientLayer, at: 0)
            }
        }
    }

}





