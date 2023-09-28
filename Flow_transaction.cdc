import MyContract from 0x05

transaction(name:String, age:UInt,account:Address) {

    prepare(signer: AuthAccount) {}

    execute {
        MyContract.addPerson(name:name,age:age,account:account)
        log("We're done.")
    }
}