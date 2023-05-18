fn main() {
    for _ in 0..(num_cpus::get() - 1) {
        std::thread::spawn(|| loop {});
    }

    loop {}
}
