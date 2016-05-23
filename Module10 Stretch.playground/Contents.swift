//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//PART 1
//
//Make a constant for currentYear that is an integer equal to the current year (i.e. 2016).
//Create a Person struct with properties for first name as a String, last name as a String, and year of birth as an Int.
//Make a new person from the Person struct
//Print out their birth year
//Print out their first and last name
//PART 2
//
//Add a computed property of age: Int to the Person struct
//Make a getter on the age that calculates the person's age based on the current year and the person's year of birth. (Hint: Look up getters in the Swift programming guide or in documentation)
//Make a setter on the age that updates the year of birth based on the age and current year. (Hint: look up setters)
//Print out their age
//Update their age and then print their new year of birth.
//♦ Black Diamond
//Change your currentYear constant so that instead of being a hard-coded, static year, it uses NSDateComponents to get the actual current year anytime it runs. Documentation should help you out.





let dateComponents = NSDateComponents()
dateComponents.day = 23
dateComponents.month = 5
dateComponents.year = 2016

if let gregorianCalendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian),
    let date = gregorianCalendar.dateFromComponents(dateComponents) {
    let weekday = gregorianCalendar.components(.Weekday, fromDate: date)
}

struct Person {
    var firstName: String
    var lastName: String
    var yearOfBirth: Int
    
    var age: Int {
        
        get {
            return (dateComponents.year - yearOfBirth)
        }
        
        set(birthYear) {
            dateComponents.year - (dateComponents.year - yearOfBirth)
        }
    }
}

let newPerson = Person(firstName: "Habib", lastName: "Miranda", yearOfBirth: 1987)
print(newPerson.yearOfBirth)
print(newPerson.firstName, newPerson.lastName)
print(newPerson.age)



