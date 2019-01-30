//
//  ViewController.swift
//  Localisation
//
//  Created by JOY JOSE on 14/01/19.
//  Copyright © 2019 Riverswave Technologies, India. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var headLabel: UILabel!
    @IBOutlet weak var changeLanguage: UILabel!
    @IBOutlet weak var languageButton: UIButton!
    @IBOutlet weak var textViews: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        headLabel.text = LocalizationSystem.sharedInstance.localizedStringForKey(key: "header_text", comment: "")
        changeLanguage.text = LocalizationSystem.sharedInstance.getLanguage()
        languageButton.setTitle(LocalizationSystem.sharedInstance.localizedStringForKey(key: "change_language", comment: ""), for: .normal)
        textViews.text = LocalizationSystem.sharedInstance.localizedStringForKey(key: "text_views", comment: "")
    }
    
    
    @IBAction func changeLanguageTapped(_ sender: Any) {
        if LocalizationSystem.sharedInstance.getLanguage() == "de" {
            LocalizationSystem.sharedInstance.setLanguage(languageCode: "en")
            UIView.appearance().semanticContentAttribute = .forceLeftToRight
        } else {
            LocalizationSystem.sharedInstance.setLanguage(languageCode: "de")
          // UIView.appearance().semanticContentAttribute = .forceRightToLeft // Arabic
             UIView.appearance().semanticContentAttribute = .forceLeftToRight
        }
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "vc") as! ViewController
        let appDlg = UIApplication.shared.delegate as? AppDelegate
        appDlg?.window?.rootViewController = vc
        }
    
    @IBAction func englishTapped(_ sender: Any) {
         LocalizationSystem.sharedInstance.setLanguage(languageCode: "en")
        viewDidLoad()
    }
    
    
    @IBAction func GermanTapped(_ sender: Any) {
         LocalizationSystem.sharedInstance.setLanguage(languageCode: "de")
        viewDidLoad()
    }
    
    

}

