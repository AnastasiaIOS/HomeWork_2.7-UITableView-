//
//  PersonsListViewController.swift
//  HomeWork_2.7(UITableView)
//
//  Created by Anastasia on 26.05.2022.
//

import UIKit

class PersonsListViewController: UITableViewController {
    
    
    private var personsList = Person.getPerson() //создаем массив

    override func viewDidLoad() {
        super.viewDidLoad()

    }
   
    // метод, задающий кол-во ячеек в списке 
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsList.count // кол-во строк в таблице
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personID", for: indexPath)
        
        // настраиваем контент ячейки
        var content = cell.defaultContentConfiguration() // экземпляр структуры, через этот объект                                                           настраиваем контент
        
        content.text = personsList[indexPath.
   

        return cell
    }
    

   

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    

}
