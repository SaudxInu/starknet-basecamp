#[starknet::contract]
mod SimpleStorage {
    #[storage]
    struct Storage {
        balance: felt252,
    }

    #[external(v0)]
    fn increase_balance(ref self: ContractState, amount: felt252) {
        self.balance.write(self.balance.read() + amount);
    }

    #[external(v0)]
    fn get_balance(ref self: ContractState) -> felt252 {
        self.balance.read()
    }
}
