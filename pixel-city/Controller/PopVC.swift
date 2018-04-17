//
//  PopVC.swift
//  pixel-city
//
//  Created by Brenno Ribeiro on 4/16/18.
//  Copyright © 2018 Brenno Ribeiro. All rights reserved.
//

import UIKit

class PopVC: UIViewController, UIGestureRecognizerDelegate {

    // Outlets
    @IBOutlet weak var popImageView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var ownerLbl: UILabel!
    
    var passedImage: UIImage!
    var passedTitle: String!
    var passedOwner: String!
    
    func initData(forImage image: UIImage, title: String, owner: String) {
        self.passedImage = image
        self.passedTitle = title
        self.passedOwner = owner
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addDoubleTap()
        
        popImageView.image = passedImage
        titleLbl.text = passedTitle
        ownerLbl.text = passedOwner
    }

    func addDoubleTap() {
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(screenWasDoubleTapped))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }
    
    @objc func screenWasDoubleTapped() {
        dismiss(animated: true, completion: nil)
    }

}
