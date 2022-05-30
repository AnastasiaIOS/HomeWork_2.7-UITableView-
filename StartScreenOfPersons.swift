//
//  StartScreenOfPersons.swift
//  HomeWork_2.7(UITableView)
//
//  Created by Anastasia on 30.05.2022.
//

import UIKit

class StartScreenOfPersons: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        goToViewControllers()
    }
    
    func goToViewControllers() {
        let persons = Person.getPerson()
        let personsListVC = viewControllers?.first as! PersonsListViewController
        let secondListVC = viewControllers?.last as! SecondPersonsListTableViewController
        
        
        personsListVC.persons = persons
        secondListVC.persons = persons
    }
}


   
