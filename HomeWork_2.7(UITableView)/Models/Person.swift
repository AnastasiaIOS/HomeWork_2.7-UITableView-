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
        
        for _ in 1...numberOfPersons {
            var person = Person(name: groupMassive.names.randomElement() ?? "",
                                surname: groupMassive.surnames.randomElement() ?? "",
                                phone: groupMassive.phones.randomElement() ?? "",
                                email: groupMassive.emails.randomElement() ?? "")
            
            massiveOfPersons.append (person)
                                     
        }
        return massiveOfPersons
    }
}
    
    /*
    func bla(persons: [Person])->Person{
        Person(
            name : randomString(list: <#T##[String]#>, string: <#T##String#>))
    }
    
    func randomString(list:[String]) ->String{
        var isRandom = false
        var result: list.randomElement()
        while isRandom == true {
            isRandom = list.contains(string)
        }
        return result
    }
}
     */
                                     
                                     
                                     
                                     
