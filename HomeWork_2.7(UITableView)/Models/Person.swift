//
//  Person.swift
//  HomeWork_2.7(UITableView)
//
//  Created by Anastasia on 05.05.2022.
//

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var title: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getPerson() -> [Person] {
        
        var massiveOfPersons: [Person] = []
        
        var massiveOfNames = groupMassive.names.shuffled()
        var massiveOfSurnames = groupMassive.surnames.shuffled()
        var massiveOfPhones = groupMassive.phones.shuffled()
        var massiveOfEmails = groupMassive.emails.shuffled()
        
        let numberOfPersons = min(massiveOfNames.count, massiveOfSurnames.count, massiveOfPhones.count, massiveOfEmails.count)
        
        for number in 1...numberOfPersons {
            let person = Person(name: massiveOfNames[number - 1] ,
                                surname: massiveOfSurnames[number - 1],
                                phone: massiveOfPhones[number - 1],
                                email: massiveOfEmails[number - 1])
            
            massiveOfPersons.append (person)
                                     
        }
        return massiveOfPersons
    }
}
    
    
                                     
                                     
                                     
                                     
