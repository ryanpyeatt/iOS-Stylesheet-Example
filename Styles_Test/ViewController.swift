//
//  ViewController.swift
//  Styles_Test
//
//  Created by Pyeatt, Ryan on 10/31/18.
//  Copyright © 2018 Ryan Pyeatt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var viewBorder: UIView!
    @IBOutlet weak var viewLabel1: UILabel!
    @IBOutlet weak var viewLabel2: UILabel!
    @IBOutlet weak var viewLabel3: UILabel!
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label1.attributedText = NSAttributedString(string: "Label #1 as Title 1", attributes: Styles.pageHeader)
        label2.attributedText = NSAttributedString(string: "Label #2 as SubHeader in Bold", attributes: Styles.subHeader)
        label3.attributedText = NSAttributedString(string: "Label #3 Body", attributes: Styles.bodyText)
        label4.attributedText = NSAttributedString(string: "Label #4 as Footnote", attributes: Styles.helperText)
        
        button1.layer.cornerRadius = 5
        button1.layer.borderWidth = 1
        button1.layer.borderColor = Styles.buttonBorder.cgColor
        let buttonText = NSAttributedString(string: "Button #1 as Body", attributes: Styles.buttonText)
        button1.setAttributedTitle(buttonText, for: .normal)
        button1.backgroundColor = Styles.buttonBackground
        button1.alpha = 1.0
        
        viewBorder.layer.borderWidth = 1
        viewBorder.layer.borderColor = Styles.viewBorder.cgColor
        viewBorder.layer.backgroundColor = Styles.viewBackground.cgColor
        viewLabel1.attributedText = NSAttributedString(string: "View Label #1 as Title 1", attributes: Styles.header)
        viewLabel2.attributedText = NSAttributedString(string: "View Label #2 as Footnote", attributes: Styles.helperText)
        viewLabel3.attributedText = NSAttributedString(string: "View Label #3 as Caption 2", attributes: Styles.captionText)
        
        textField1.attributedPlaceholder = NSAttributedString(string: "Username", attributes: Styles.placeholderText)
        
        label5.attributedText = NSAttributedString(string: "Label #5 as Title 3 in Bold", attributes: Styles.pageHeader)
        label6.attributedText = NSAttributedString(string: "Label #6 Caption 2", attributes: Styles.captionText)
    }

}

