//
//  Person.swift
//  HomeWork_2.7(UITableView)
//
//  Created by Anastasia on 05.05.2022.
//

struct Person {
    let name: String
    let surname: String
    
    var title: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person

    }
}


struct Contacts {
    let phone: String
    let email: String
    
    static func getContacts() -> Contacts {
        Contacts(phone: ,
                 email: )

    }
}
