script{
    fun main() {
        let i: u64;
        let x: u64;
        let y: u64;
        let z: u64;
        let tmp: u64;
        i = 0;
        x = 1;
        y = 1;
        z = 2;
        while (copy(i) < 1000) {
            //The number of iterations can be changed to simulate different complexity.
            i = copy(i) + 1;
            tmp = copy(z);
            z = copy(x)+copy(y);
            x=copy(y);
            y=copy(tmp);
        }

        return;
    }
}