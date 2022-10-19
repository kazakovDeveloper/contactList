//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Kazakov Danil on 18.10.2022.
//

import UIKit

class ContactListViewController: UITableViewController {

    var contactList: [Contact]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let tabBar = tabBarController as? TabBarController else { return }
        contactList = tabBar.contactList
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = "\(contactList[indexPath.row].firstName) \(contactList[indexPath.row].surname)"
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? ContactDetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailsVC.contactList = contactList[indexPath.row]
    }
    
}

