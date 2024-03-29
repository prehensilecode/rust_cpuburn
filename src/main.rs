fn main() {
    println!("Running on {} CPU cores.", num_cpus::get());
    for _ in 0..(num_cpus::get() - 1) {
        std::thread::spawn(|| loop {});
    }

    loop {}
}
