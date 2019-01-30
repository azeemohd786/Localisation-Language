//
//  2VC.swift
//  Localisation
//
//  Created by JOY JOSE on 14/01/19.
//  Copyright © 2019 Riverswave Technologies, India. All rights reserved.
//

import UIKit

class _VC: UIViewController {

    @IBOutlet weak var textViews: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
      textViews.text = LocalizationSystem.sharedInstance.localizedStringForKey(key: "text_views", comment: "")
        if LocalizationSystem.sharedInstance.getLanguage() == "de" {
            LocalizationSystem.sharedInstance.setLanguage(languageCode: "en")
            UIView.appearance().semanticContentAttribute = .forceLeftToRight
        } else {
            LocalizationSystem.sharedInstance.setLanguage(languageCode: "de")
            // UIView.appearance().semanticContentAttribute = .forceRightToLeft // Arabic
            UIView.appearance().semanticContentAttribute = .forceLeftToRight
        }
    }
    

    

}
