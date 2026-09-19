const user = {
    name: 'dimych',
    dob: '1988-02-01',
    address: {},
    wallets: [{type: 'bitconin'}]
}

type UserType = typeof user

const service = {
    async getUser(){},
    async createUser(user: UserType){},
}