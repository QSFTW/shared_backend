script {
    use 0x1::LibraAccount;
    use 0x1::Coin1;
    use 0x1::Signer;
    fun main (payer: &signer, payee: address,amount: u64,) {
        let payer_withdrawal_cap = LibraAccount::extract_withdraw_capability(payer);
        LibraAccount::pay_from<Coin1>(&payer_withdrawal_cap, payee, amount, x"", x"");
        }
}
