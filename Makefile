test:
	@cargo test

check:
	@cargo +nightly fmt
	@cargo clippy -- -D clippy::all
	@cargo +nightly udeps --all-targets
	@cargo outdated -wR
	@cargo update --dry-run