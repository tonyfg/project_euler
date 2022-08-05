// Q: Add all the natural numbers below one thousand that are multiples of 3 or 5.
// A: 233168

fn main() {
    let sum: i32 = (1..1000).filter(|n| n % 3 == 0 || n % 5 == 0).sum();
    println!("Nums: {}", sum);
}
