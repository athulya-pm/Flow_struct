
pub contract MyContract {

    pub var people: {Address: Person}
    // Define a struct
    pub struct Person {
        pub let name:String
        pub let age:UInt
        pub let account:Address

    // You have to pass in 2 arguments when creating this Struct.
        init(_name: String, _age:UInt,_account:Address) {
            self.name=_name
            self.age=_age
            self.account=_account
        }
    }

    pub fun addPerson(name:String, age:UInt,account:Address){
        let newPerson=Person(_name:name,_age:age,_account:account)
        self.people[account]=newPerson
    }

  // The init() function is required if the contract contains any fields.
  init() {
    self.people= {}
  }
}
