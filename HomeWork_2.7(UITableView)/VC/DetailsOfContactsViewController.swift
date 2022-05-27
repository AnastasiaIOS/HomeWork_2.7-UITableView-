//
//  DetailsOfContactsViewController.swift
//  HomeWork_2.7(UITableView)
//
//  Created by Anastasia on 28.05.2022.
//

import UIKit

class DetailsOfContactsViewController: UIViewController {
    
    @IBOutlet var fullnamePersonLabel: UILabel!
    @IBOutlet var emailOfPerson: UILabel!
    @IBOutlet var phoneOfPerson: UILabel!
    
    var person: Person! //экземпляр модели
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullnamePersonLabel.text = person.title
        emailOfPerson.text = "email: \(person.email)"
        phoneOfPerson.text = "phone: \(person.phone)"

    }
    

   

}
