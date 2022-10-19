//
//  ContactDetailsViewController.swift
//  ContactList
//
//  Created by Kazakov Danil on 18.10.2022.
//

import UIKit

class ContactDetailsViewController: UIViewController {
    
    @IBOutlet var numberOutlet: UILabel!
    @IBOutlet var mailOutlet: UILabel!
    
    var contactList: Contact!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "\(contactList.firstName)\(contactList.surname)"
        
        numberOutlet.text = contactList.phoneNumber
        mailOutlet.text = contactList.email
    }

        
}

