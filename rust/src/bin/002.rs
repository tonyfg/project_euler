// Q: Find the sum of all the even-valued terms in the Fibonacci sequence which
//    do not exceed four million.
// A: 4613732

fn main() {
    let mut f1 = 1;
    let mut f2 = 1;
    let mut n = 0;

    loop {
        let tmp = f2;
        f2 += f1;
        f1 = tmp;
        if f2 > 4000000 { break };
        if f2 % 2 == 0 { n += f2 }
    }

    println!("N => {}", n);
}
