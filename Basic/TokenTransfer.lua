-- Define a table to store balances
balances = {}

-- Function to initialize account balances
function initialize_accounts(accounts)
    for _, account in ipairs(accounts) do
        balances[account] = 1000 -- Starting balance for each account
    end
end

-- Function to transfer tokens
function transfer(sender, receiver, amount)
    if balances[sender] == nil or balances[receiver] == nil then
        return "Error: Invalid accounts!"
    end
    if balances[sender] < amount then
        return "Error: Insufficient balance!"
    end
    balances[sender] = balances[sender] - amount
    balances[receiver] = balances[receiver] + amount
    return "Transfer successful!"
end

-- Example usage
initialize_accounts({"Alice", "Bob", "Charlie"})
print(transfer("Alice", "Bob", 100)) -- Output: Transfer successful!
print(balances["Alice"]) -- Output: 900
print(balances["Bob"]) -- Output: 1100
