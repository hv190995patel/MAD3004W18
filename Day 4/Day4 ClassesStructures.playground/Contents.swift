//CLASSES AND STRUCTURES

//Declare a structure

struct project {
    var title = ""
    var hours = 0
    
    func display(){
        print("Project Title: ",title)
        print("Total work hours required: ",hours)
    }
}

//DECLARING Instance of structure

var LMSProject = project(title: "Moodle",hours :200)
print(LMSProject)

LMSProject.display()

LMSProject.hours = 300
print(LMSProject)
//LMSProject.display()


//CLASS DECLARATION

class Manager {
    var name : String = ""
    var productOwner : Bool = true
    var currentProjects = project()
}

//Creating Instance of Class
let mgrCanada = Manager()
mgrCanada.name = "HP"
mgrCanada.productOwner = true
mgrCanada.currentProjects=project(title: "Sales Reporting", hours: 20)

print("mgrCanada Name : ",mgrCanada.name)
print("mgrCanada Product Owner: ",mgrCanada.productOwner)
print("mgrCanada Current Project Title : ",mgrCanada.currentProjects.title)
print("mgrCanada current Project Hours : ",mgrCanada.currentProjects.hours)

//Structures Are VALUE TYPES

struct address {
    var street = "265 Yorkland Blvd"
    var city = "North York"
    var postalCode = "M1H1Y1"
}

var lambton = address()
print("Lambton : ",lambton)

var cestar = lambton
//let cestar = lambton // Raise error when change the parameter
print("Cestar : ",cestar)

cestar.street = "271 Yorkland Blvd"
cestar.postalCode = "M1H3Y3"

print("Cestar :",cestar)

print("Lambton : ",lambton)


//Classws are reference types
class Institute {
    var street = "265 Yorkland Blvd"
    var city = "North York"
    var postalCode = "M1H1Y1"
}

var myLambton = Institute()
print("myLambton street: ",myLambton.street)
print("myLambton City: ",myLambton.city)
print("myLambton PostalCodeL ",myLambton.postalCode)

var myCestar = myLambton
print("myCestar street: ",myCestar.street)
print("myCestar City: ",myCestar.city)
print("mycestar PostalCode: ",myCestar.postalCode)

myCestar.street = "271 Yorkland Blvd"
myCestar.postalCode = " M3H3Y3"
print("myCestar street: ",myCestar.street)
print("myCestar postalCode: ",myCestar.postalCode)

print("myLambton Street: ",myLambton.street)
print("myLambton PostalCodeL ",myLambton.postalCode)

//Identical To ===

if myLambton === myCestar {
    print("Lambton And Cestar Are Same")
}
else {
    print("Lambton ANd Cestar Are NOT Same")
}


var yourCestar = Institute()
if yourCestar === myCestar {
    print("YourCestar And Cestar Are Same")
}
else {
    print("YourCestar And Cestar Are NOT Same")
}
