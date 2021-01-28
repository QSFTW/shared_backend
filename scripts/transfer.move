script {
    use 0x0.LibraAccount;
    func main (payee: address, amount: u64) {
        LibraAccount.pay_from_sender(move(payee), move(amount))
        }
}