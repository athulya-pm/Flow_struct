import MyContract from 0x05

pub fun main(account: Address): MyContract.Person{
    return MyContract.people[account]!
}
