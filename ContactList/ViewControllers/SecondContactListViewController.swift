//
//  SecondContactListViewController.swift
//  ContactList
//
//  Created by Kazakov Danil on 18.10.2022.
//

import UIKit



class SecondContactListViewController: UITableViewController {
    
    var contactList: [Contact]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let tabBar = tabBarController as? TabBarController else { return }
        contactList = tabBar.contactList
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        contactList.count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contactList[section].firstName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "phoneCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = contactList[indexPath.section].phoneNumber
        } else {
            content.text = contactList[indexPath.section].email
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
}
