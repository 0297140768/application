//
//  UserScreen.swift
//  application
//
//  Created by Татьяна on 31.08.2018.
//  Copyright © 2018 Татьяна. All rights reserved.
//

import UIKit

class UserScreen: UIViewController {
    
    var messageText: String!

    @IBOutlet weak var message: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        message.text = messageText
        
    }

}
