//
//  PersonsListViewController.swift
//  HomeWork_2.7(UITableView)
//
//  Created by Anastasia on 26.05.2022.
//

import UIKit

class PersonsListViewController: UITableViewController {
    
    
    var persons = Person.getPerson() //создаем массив

    override func viewDidLoad() {
        super.viewDidLoad()

    }
   
    // метод, задающий кол-во ячеек в списке 
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count // кол-во строк в таблице
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personID", for: indexPath)
        
        // настраиваем контент ячейки
        var content = cell.defaultContentConfiguration() // экземпляр структуры, через этот объект                                                           настраиваем контент
        let person = persons[indexPath.row] // созд экземпляр модели по соответств.индексу
        content.text = person.title
   
        cell.contentConfiguration = content
        return cell
    }

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let detailsVC = segue.destination as? DetailsOfContactsViewController else {return} // созд. экз. вьюконтроллера
        //обращаемся к супервью и запрашеваем индекс по которому тапает пользак
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        // извлекаем нужную модель из массива
        let person = persons[indexPath.row]
        // передаем экземпляр на второй экран
        detailsVC.person = person
        
    }
    

}
