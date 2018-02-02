//CLASSES

//Class For an Employee

class Employee{
    var empID: Int?
    var empName: String?
    var basicPay: Double?
    
    //Initializers
    //init() keyword for declaring constructor
    init(){
      self.empID = 0
      self.empName = ""
      self.basicPay=0.0
    }
    //Parameterized Intialiazer
    init(ID: Int, name: String, pay: Double){
        self.empID = ID
        self.empName = name
        self.basicPay = pay
    }
    func display() {
        print("Employee ID: ",self.empID!)
        print("Employee Name: ",self.empName!)
        print("Employee Basic Pay: ",self.basicPay!)
    }
    //deinitializer
    deinit{
        print("Employee Object deinitialized")
    }
}

var emp1 = Employee()
emp1.empID = 101
emp1.empName = "Harsh"
emp1.basicPay = 5000
//emp1.display()

var emp3 = Employee()
//emp3.display()

var emp4 = Employee(ID: 104, name: "Harsh", pay: 3409.89)
//emp4.display()

//Inherit Employee Class
class PermanentEmployee : Employee{
    var VactionWeeks : Int?
    
    //default initializer
    override init() {
        super.init()
        self.VactionWeeks = 0
    }
    
    //Parameterized initializer of subclass
    init(eID: Int, eNM: String, ePay: Double, Weeks: Int) {
        super.init(ID: eID, name: eNM, pay: ePay)
        self.VactionWeeks = Weeks
    }
    //Ovverride keyword for subclass
    override func display() {
        //Use of super keyword
        super.display()
        print("Vaction Weeks: ",VactionWeeks!)
    }
}

var obj2 = PermanentEmployee()
//obj2.display()
obj2.empID = 102
obj2.empName = "Harsh"
obj2.basicPay = 3000
obj2.VactionWeeks = 10
//obj2.display()

var obj5 = PermanentEmployee()
//obj5.display()

var obj6 = PermanentEmployee(eID: 106, eNM: "Harsh", ePay: 1320.53, Weeks: 2)
//obj6.display()


class Payroll : PermanentEmployee{
    var netPay: Double{
    
        get{
            let vw = self.VactionWeeks!
            if vw > 5{
                return self.basicPay! - 100
            }
            else{
                return self.basicPay!
            }
        }
    }
    override init(){
        super.init()
        //self.netPay = 0
    }
    init(eID: Int, eNM: String, ePay: Double, weeks: Int) {
       super.init(eID: eID, eNM: eNM, ePay: ePay, Weeks: weeks)
       //self.netPay = 0
    }
    
    override func display() {
        super.display()
        //self.calculate()
        print("NetPay: ",self.netPay)
    }
    /*
    func calculate() {
        var vw = self.VactionWeeks
        if vw > 5{
            self.netPay! = self.basicPay! - 100
        }
        else{
            self.netPay! = self.basicPay!
        }
    }
 */
}

var obj7 = Payroll(eID: 107, eNM: "Harsh", ePay: 2456.32, weeks: 6)
obj7.display()

//Manipulate object array[]
var janPayroll = [Payroll]()
let noOfEmployees = 2

for i in 0..<2{
    janPayroll.append(Payroll(eID: 107, eNM: "HP", ePay: 5555.56, weeks: 7))
janPayroll[i].display()
    
}
