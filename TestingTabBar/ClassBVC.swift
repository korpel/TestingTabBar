//
//  ClassBVC.swift
//  DelegateTutorial
//
//  Created by James Rochabrun on 2/7/17.
//  Copyright © 2017 James Rochabrun. All rights reserved.
//

import UIKit

protocol ClassBVCDelegate : class {
    func changeBackroundColor(_ color: UIColor?)
}
class ClassBVC: UIViewController {
    
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    weak var delegate : ClassBVCDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        firstView.backgroundColor = .cyan
        firstView.layer.borderColor = UIColor.white.cgColor
        firstView.layer.borderWidth = 2.0
        firstView.layer.cornerRadius = firstView.frame.width / 2
        firstView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap(_:))))
        secondView.backgroundColor = .brown
        secondView.layer.borderColor = UIColor.white.cgColor
        secondView.layer.borderWidth = 2.0
        secondView.layer.cornerRadius = secondView.frame.width / 2
        secondView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap(_:))))

    }
    @IBAction func dismissView(_ sender: UIBarButtonItem) {
        navigationController?.dismiss(animated: true)
    }
    
    @objc func handleTap(_ tapGesture: UITapGestureRecognizer) {
        
        view.backgroundColor = tapGesture.view?.backgroundColor
        delegate?.changeBackroundColor(tapGesture.view?.backgroundColor)
    }
}
