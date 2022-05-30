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
    }
    
    func goToViewControllers() {
        let persons = Person.getPerson()
        let personsListVC = viewControllers?.first as! PersonsListViewController
        let secondListVC = viewControllers?.last as! SecondPersonsListTableViewController
        
        // !!!!ВОПРОС: КАК ПОНЯТЬ ЧТО ПОСЛЕ viewControllers НУЖНО БЫЛО СТАВИТЬ "?." И first (В ОДНОМ СЛУЧАЕ) И Last в ДРУГОМ СЛУЧАЕ? это где-то в документации есть?
        
        personsListVC.persons = persons
        
    }
}


    .,.,.,
